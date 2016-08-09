require "rubygems"

require "extend/pathname"
require "hbc/cask_dependencies"
require "hbc/staged"
require "hbc/verify"

class Hbc::Installer
  # TODO: it is unwise for Hbc::Staged to be a module, when we are
  #       dealing with both staged and unstaged Casks here.  This should
  #       either be a class which is only sometimes instantiated, or there
  #       should be explicit checks on whether staged state is valid in
  #       every method.
  include Hbc::Staged
  include Hbc::Verify

  attr_reader :force, :skip_cask_deps

  PERSISTENT_METADATA_SUBDIRS = ["gpg"].freeze

  def initialize(cask, command: Hbc::SystemCommand, force: false, skip_cask_deps: false, require_sha: false)
    @cask = cask
    @command = command
    @force = force
    @skip_cask_deps = skip_cask_deps
    @require_sha = require_sha
  end

  def self.print_caveats(cask)
    odebug "Printing caveats"
    unless cask.caveats.empty?
      output = capture_output do
        cask.caveats.each do |caveat|
          if caveat.respond_to?(:eval_and_print)
            caveat.eval_and_print(cask)
          else
            puts caveat
          end
        end
      end

      unless output.empty?
        ohai "Caveats"
        puts output
      end
    end
  end

  def self.capture_output(&block)
    old_stdout = $stdout
    $stdout = Buffer.new($stdout.tty?)
    block.call
    output = $stdout.string
    $stdout = old_stdout
    output
  end

  def install
    odebug "Hbc::Installer.install"

    if @cask.installed? && @cask.auto_updates && !force
      raise Hbc::CaskAutoUpdatesError, @cask
    end

    raise Hbc::CaskAlreadyInstalledError, @cask if @cask.installed? && !force

    print_caveats

    begin
      satisfy_dependencies
      verify_has_sha if @require_sha && !@force
      download
      verify
      extract_primary_container
      install_artifacts
      save_caskfile
      enable_accessibility_access
    rescue StandardError => e
      purge_versioned_files
      raise e
    end

    puts summary
  end

  def summary
    s = if MacOS.version >= :lion && !ENV["HOMEBREW_NO_EMOJI"]
          (ENV["HOMEBREW_INSTALL_BADGE"] || "\xf0\x9f\x8d\xba") + "  "
        else
          "#{Hbc::Utils::Tty.blue.bold}==>#{Hbc::Utils::Tty.reset.bold} Success!#{Hbc::Utils::Tty.reset} "
        end
    s << "#{@cask} was successfully installed!"
  end

  def download
    odebug "Downloading"
    download = Hbc::Download.new(@cask, force: false)
    @downloaded_path = download.perform
    odebug "Downloaded to -> #{@downloaded_path}"
    @downloaded_path
  end

  def verify_has_sha
    odebug "Checking cask has checksum"
    return unless @cask.sha256 == :no_check
    raise Hbc::CaskNoShasumError, @cask
  end

  def verify
    Hbc::Verify.all(@cask, @downloaded_path)
  end

  def extract_primary_container
    odebug "Extracting primary container"
    FileUtils.mkdir_p @cask.staged_path
    container = if @cask.container && @cask.container.type
                  Hbc::Container.from_type(@cask.container.type)
                else
                  Hbc::Container.for_path(@downloaded_path, @command)
                end
    unless container
      raise Hbc::CaskError, "Uh oh, could not figure out how to unpack '#{@downloaded_path}'"
    end
    odebug "Using container class #{container} for #{@downloaded_path}"
    container.new(@cask, @downloaded_path, @command).extract
  end

  def install_artifacts
    odebug "Installing artifacts"
    artifacts = Hbc::Artifact.for_cask(@cask)
    odebug "#{artifacts.length} artifact/s defined", artifacts
    artifacts.each do |artifact|
      odebug "Installing artifact of class #{artifact}"
      options = { command: @command, force: force }
      artifact.new(@cask, options).install_phase
    end
  end

  # TODO: move dependencies to a separate class
  #       dependencies should also apply for "brew cask stage"
  #       override dependencies with --force or perhaps --force-deps
  def satisfy_dependencies
    if @cask.depends_on
      ohai "Satisfying dependencies"
      macos_dependencies
      arch_dependencies
      x11_dependencies
      formula_dependencies
      cask_dependencies unless skip_cask_deps
      puts "complete"
    end
  end

  def macos_dependencies
    return unless @cask.depends_on.macos
    if @cask.depends_on.macos.first.is_a?(Array)
      operator, release = @cask.depends_on.macos.first
      unless MacOS.version.send(operator, release)
        raise Hbc::CaskError, "Cask #{@cask} depends on macOS release #{operator} #{release}, but you are running release #{MacOS.version}."
      end
    elsif @cask.depends_on.macos.length > 1
      unless @cask.depends_on.macos.include?(Gem::Version.new(MacOS.version.to_s))
        raise Hbc::CaskError, "Cask #{@cask} depends on macOS release being one of [#{@cask.depends_on.macos.map(&:to_s).join(', ')}], but you are running release #{MacOS.version}."
      end
    else
      unless MacOS.version == @cask.depends_on.macos.first
        raise Hbc::CaskError, "Cask #{@cask} depends on macOS release #{@cask.depends_on.macos.first}, but you are running release #{MacOS.version}."
      end
    end
  end

  def arch_dependencies
    return if @cask.depends_on.arch.nil?
    @current_arch ||= { type: Hardware::CPU.type, bits: Hardware::CPU.bits }
    return if @cask.depends_on.arch.any? { |arch|
      arch[:type] == @current_arch[:type] &&
      Array(arch[:bits]).include?(@current_arch[:bits])
    }
    raise Hbc::CaskError, "Cask #{@cask} depends on hardware architecture being one of [#{@cask.depends_on.arch.map(&:to_s).join(', ')}], but you are running #{@current_arch}"
  end

  def x11_dependencies
    return unless @cask.depends_on.x11
    raise Hbc::CaskX11DependencyError, @cask.token if Hbc.x11_libpng.select(&:exist?).empty?
  end

  def formula_dependencies
    return unless @cask.depends_on.formula && !@cask.depends_on.formula.empty?
    ohai "Installing Formula dependencies from Homebrew"
    @cask.depends_on.formula.each do |dep_name|
      print "#{dep_name} ... "
      installed = @command.run(Hbc.homebrew_executable,
                               args:         ["list", "--versions", dep_name],
                               print_stderr: false).stdout.include?(dep_name)
      if installed
        puts "already installed"
      else
        @command.run!(Hbc.homebrew_executable,
                      args: ["install", dep_name])
        puts "done"
      end
    end
  end

  def cask_dependencies
    return unless @cask.depends_on.cask && !@cask.depends_on.cask.empty?
    ohai "Installing Cask dependencies: #{@cask.depends_on.cask.join(', ')}"
    deps = Hbc::CaskDependencies.new(@cask)
    deps.sorted.each do |dep_token|
      puts "#{dep_token} ..."
      dep = Hbc.load(dep_token)
      if dep.installed?
        puts "already installed"
      else
        Hbc::Installer.new(dep, force: false, skip_cask_deps: true).install
        puts "done"
      end
    end
  end

  def print_caveats
    self.class.print_caveats(@cask)
  end

  # TODO: logically could be in a separate class
  def enable_accessibility_access
    return unless @cask.accessibility_access
    ohai "Enabling accessibility access"
    if MacOS.version <= :mountain_lion
      @command.run!("/usr/bin/touch",
                    args: [Hbc.pre_mavericks_accessibility_dotfile],
                    sudo: true)
    elsif MacOS.version <= :yosemite
      @command.run!("/usr/bin/sqlite3",
                    args: [
                            Hbc.tcc_db,
                            "INSERT OR REPLACE INTO access VALUES('kTCCServiceAccessibility','#{bundle_identifier}',0,1,1,NULL);",
                          ],
                    sudo: true)
    else
      @command.run!("/usr/bin/sqlite3",
                    args: [
                            Hbc.tcc_db,
                            "INSERT OR REPLACE INTO access VALUES('kTCCServiceAccessibility','#{bundle_identifier}',0,1,1,NULL,NULL);",
                          ],
                    sudo: true)
    end
  end

  def disable_accessibility_access
    return unless @cask.accessibility_access
    if MacOS.version >= :mavericks
      ohai "Disabling accessibility access"
      @command.run!("/usr/bin/sqlite3",
                    args: [
                            Hbc.tcc_db,
                            "DELETE FROM access WHERE client='#{bundle_identifier}';",
                          ],
                    sudo: true)
    else
      opoo <<-EOS.undent
        Accessibility access was enabled for #{@cask}, but it is not safe to disable
        automatically on this version of macOS.  See System Preferences.
      EOS
    end
  end

  def save_caskfile
    timestamp = :now
    create    = true
    savedir   = @cask.metadata_subdir("Casks", timestamp, create)
    if Dir.entries(savedir).size > 2
      # should not happen
      raise Hbc::CaskAlreadyInstalledError, @cask unless force
      savedir.rmtree
      FileUtils.mkdir_p savedir
    end
    FileUtils.copy(@cask.sourcefile_path, savedir) if @cask.sourcefile_path
  end

  def uninstall
    odebug "Hbc::Installer.uninstall"
    disable_accessibility_access
    uninstall_artifacts
    purge_versioned_files
    purge_caskroom_path if force
  end

  def uninstall_artifacts
    odebug "Un-installing artifacts"
    artifacts = Hbc::Artifact.for_cask(@cask)
    odebug "#{artifacts.length} artifact/s defined", artifacts
    artifacts.each do |artifact|
      odebug "Un-installing artifact of class #{artifact}"
      options = { command: @command, force: force }
      artifact.new(@cask, options).uninstall_phase
    end
  end

  def zap
    ohai %Q{Implied "brew cask uninstall #{@cask}"}
    uninstall_artifacts
    if Hbc::Artifact::Zap.me?(@cask)
      ohai "Dispatching zap stanza"
      Hbc::Artifact::Zap.new(@cask, command: @command).zap_phase
    else
      opoo "No zap stanza present for Cask '#{@cask}'"
    end
    ohai "Removing all staged versions of Cask '#{@cask}'"
    purge_caskroom_path
  end

  def gain_permissions_remove(path)
    Hbc::Utils.gain_permissions_remove(path, command: @command)
  end

  def purge_versioned_files
    odebug "Purging files for version #{@cask.version} of Cask #{@cask}"

    # versioned staged distribution
    gain_permissions_remove(@cask.staged_path) if !@cask.staged_path.nil? && @cask.staged_path.exist?

    # Homebrew-Cask metadata
    if @cask.metadata_versioned_container_path.respond_to?(:children) &&
       @cask.metadata_versioned_container_path.exist?
      @cask.metadata_versioned_container_path.children.each do |subdir|
        unless PERSISTENT_METADATA_SUBDIRS.include?(subdir.basename)
          gain_permissions_remove(subdir)
        end
      end
    end
    @cask.metadata_versioned_container_path.rmdir_if_possible
    @cask.metadata_master_container_path.rmdir_if_possible

    # toplevel staged distribution
    @cask.caskroom_path.rmdir_if_possible
  end

  def purge_caskroom_path
    odebug "Purging all staged versions of Cask #{@cask}"
    gain_permissions_remove(@cask.caskroom_path)
  end
end
