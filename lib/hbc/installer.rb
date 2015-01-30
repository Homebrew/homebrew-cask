require 'rubygems'

require 'hbc/cask_dependencies'
require 'hbc/staged'
require 'hbc/verify'

class Hbc::Installer

  # todo: it is unwise for Hbc::Staged to be a module, when we are
  # dealing with both staged and unstaged Casks here.  This should
  # either be a class which is only sometimes instantiated, or there
  # should be explicit checks on whether staged state is valid in
  # every method.
  include Hbc::Staged
  include Hbc::Verify

  PERSISTENT_METADATA_SUBDIRS = [ 'gpg' ]

  def initialize(cask, command=Hbc::SystemCommand)
    @cask = cask
    @command = command
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

  def install(force=false, skip_cask_deps=false)
    odebug "Hbc::Installer.install"
    if @cask.installed? && !force
      raise Hbc::CaskAlreadyInstalledError.new(@cask)
    end

    print_caveats

    begin
      satisfy_dependencies(skip_cask_deps)
      satisfy_conflicts
      download
      verify
      extract_primary_container
      install_artifacts
      save_caskfile force
      enable_accessibility_access
    rescue StandardError => e
      purge_versioned_files
      raise e
    end

    puts summary
  end

  def summary
    s = if MacOS.release >= :lion and not ENV['HOMEBREW_NO_EMOJI']
      (ENV['HOMEBREW_INSTALL_BADGE'] || "\xf0\x9f\x8d\xba") + '  '
    else
      "#{Tty.blue.bold}==>#{Tty.white} Success!#{Tty.reset} "
    end
    s << "#{@cask} staged at '#{@cask.staged_path}' (#{Hbc::Utils.cabv(@cask.staged_path)})"
  end

  def download
    odebug "Downloading"
    download = Hbc::Download.new(@cask)
    @downloaded_path = download.perform
    odebug "Downloaded to -> #{@downloaded_path}"
    @downloaded_path
  end

  def verify
    Hbc::Verify.all(@downloaded_path, @cask)
  end

  def extract_primary_container
    odebug "Extracting primary container"
    FileUtils.mkdir_p @cask.staged_path
    container = if @cask.container and @cask.container.type
       Hbc::Container.from_type(@cask.container.type)
    else
       Hbc::Container.for_path(@downloaded_path, @command)
    end
    unless container
      raise Hbc::CaskError.new "Uh oh, could not identify primary container for '#{@downloaded_path}'"
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
      artifact.new(@cask, @command).install_phase
    end
  end

  # todo move dependencies to a separate class
  #      dependencies should also apply for "brew cask stage"
  #      override dependencies with --force or perhaps --force-deps
  def satisfy_dependencies(skip_cask_deps=false)
    if @cask.depends_on
      ohai 'Satisfying dependencies'
      @cask.depends_on.pairs.each do |type, dependencies|
        unless type == :cask && skip_cask_deps
          dependencies.check!(@cask)
        end
      end
      puts 'complete'
    end
  end

  def satisfy_conflicts
    if @cask.conflicts_with
      ohai 'Satisfying conflicts'
      @cask.conflicts_with.pairs.each do |type, conflicts|
        conflicts.check!(@cask)
      end
      puts 'complete'
    end
  end

  def print_caveats
    self.class.print_caveats(@cask)
  end

  # todo: logically could be in a separate class
  def enable_accessibility_access
    return unless @cask.accessibility_access
    ohai 'Enabling accessibility access'
    if MacOS.release >= :mavericks
      @command.run!('/usr/bin/sqlite3',
                    :args => [
                              Hbc.tcc_db,
                              "INSERT INTO access VALUES('kTCCServiceAccessibility','#{bundle_identifier}',0,1,1,NULL);",
                             ],
                    :sudo => true)
    else
      @command.run!('/usr/bin/touch',
                    :args => [Hbc.pre_mavericks_accessibility_dotfile],
                    :sudo => true)
    end
  end

  def disable_accessibility_access
    return unless @cask.accessibility_access
    if MacOS.release >= :mavericks
      ohai 'Disabling accessibility access'
      @command.run!('/usr/bin/sqlite3',
                    :args => [
                              Hbc.tcc_db,
                              "DELETE FROM access WHERE client='#{bundle_identifier}';",
                             ],
                    :sudo => true)
    else
      opoo <<-EOS.undent
        Accessibility access was enabled for #{@cask}, but it is not safe to disable
        automatically on this version of OS X.  See System Preferences.
      EOS
    end
  end

  def save_caskfile(force=false)
    timestamp = :now
    create    = true
    savedir   = @cask.metadata_subdir('Casks', timestamp, create)
    if Dir.entries(savedir).size > 2
      # should not happen
      if force
        savedir.rmtree
        FileUtils.mkdir_p savedir
      else
        raise Hbc::CaskAlreadyInstalledError.new(@cask)
      end
    end
    FileUtils.copy(@cask.sourcefile_path, savedir) if @cask.sourcefile_path
  end

  def uninstall(force=false)
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
      artifact.new(@cask, @command).uninstall_phase
    end
  end

  def zap
    ohai %Q{Implied "brew cask uninstall #{@cask}"}
    uninstall_artifacts
    if Hbc::Artifact::Zap.me?(@cask)
      ohai "Dispatching zap stanza"
      Hbc::Artifact::Zap.new(@cask, @command).zap_phase
    else
      opoo "No zap stanza present for Cask '#{@cask}'"
    end
    ohai %Q{Removing all staged versions of Cask '#{@cask}'}
    purge_caskroom_path
  end

  # this feels like a class method, but uses @command
  def permissions_rmtree(path)
    if path.respond_to?(:rmtree) and path.exist?
      tried_permissions = false
      tried_ownership = false
      begin
        path.rmtree
      rescue StandardError => e
        # in case of permissions problems
        if path.exist? and !tried_permissions
          begin
            # todo Better handling for the case where path is a symlink.
            #      The -h and -R flags cannot be combined, and behavior is
            #      dependent on whether the file argument has a trailing
            #      slash.  This should do the right thing, but is fragile.
            @command.run!('/usr/bin/chflags', :args => ['-R', '--', '000',   path])
            @command.run!('/bin/chmod',       :args => ['-R', '--', 'u+rwx', path])
            @command.run!('/bin/chmod',       :args => ['-R', '-N',          path])
          rescue StandardError => e
            unless tried_ownership
              # in case of ownership problems
              # todo Further examine files to see if ownership is the problem
              #      before using sudo+chown
              ohai "Using sudo to gain ownership of path '#{path}'"
              current_user = Etc.getpwuid(Process.euid).name
              @command.run('/usr/sbin/chown', :args => ['-R', '--', current_user, path],
                                              :sudo => true)
              tried_ownership = true
              retry # permissions
            end
          end
          tried_permissions = true
          retry # rmtree
        end
      end
    end
  end

  def purge_versioned_files
    odebug "Purging files for version #{@cask.version} of Cask #{@cask}"

    # versioned staged distribution
    permissions_rmtree(@cask.staged_path)

    # Homebrew-cask metadata
    if @cask.metadata_versioned_container_path.respond_to?(:children) and
        @cask.metadata_versioned_container_path.exist?
      @cask.metadata_versioned_container_path.children.each do |subdir|
        permissions_rmtree subdir unless PERSISTENT_METADATA_SUBDIRS.include?(subdir.basename)
      end
    end
    Hbc::Utils.rmdir_if_possible(@cask.metadata_versioned_container_path)
    Hbc::Utils.rmdir_if_possible(@cask.metadata_master_container_path)

    # toplevel staged distribution
    Hbc::Utils.rmdir_if_possible(@cask.caskroom_path)
  end

  def purge_caskroom_path
    odebug "Purging all staged versions of Cask #{@cask}"
    permissions_rmtree(@cask.caskroom_path)
  end
end
