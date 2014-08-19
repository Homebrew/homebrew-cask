class Cask::Installer
  def initialize(cask, command=Cask::SystemCommand)
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

  def install(force=false)
    odebug "Cask::Installer.install"
    if @cask.installed? && !force
      raise CaskAlreadyInstalledError.new(@cask)
    end

    print_caveats

    begin
      formula_dependencies
      download
      extract_primary_container
      install_artifacts
    rescue
      purge_files
      raise
    end

    puts summary
  end

  def summary
    s = if MacOS.version >= :lion and not ENV['HOMEBREW_NO_EMOJI']
      (ENV['HOMEBREW_INSTALL_BADGE'] || "\xf0\x9f\x8d\xba") + '  '
    else
      "#{Tty.blue}==>#{Tty.white} Success!#{Tty.reset} "
    end
    s << "#{@cask} installed to '#{@cask.destination_path}' (#{@cask.destination_path.cabv})"
  end

  def download
    odebug "Downloading"
    download = Cask::Download.new(@cask)
    @downloaded_path = download.perform
    odebug "Downloaded to -> #{@downloaded_path}"
    @downloaded_path
  end

  def extract_primary_container
    odebug "Extracting primary container"
    FileUtils.mkdir_p @cask.destination_path
    container = if @cask.container_type
       Cask::Container.from_type(@cask.container_type)
    else
       Cask::Container.for_path(@downloaded_path, @command)
    end
    unless container
      raise CaskError.new "Uh oh, could not identify primary container for '#{@downloaded_path}'"
    end
    odebug "Using container class #{container} for #{@downloaded_path}"
    container.new(@cask, @downloaded_path, @command).extract
  end

  def install_artifacts
    odebug "Installing artifacts"
    artifacts = Cask::Artifact.for_cask(@cask)
    odebug "#{artifacts.length} artifact/s defined", artifacts
    artifacts.each do |artifact|
      odebug "Installing artifact of class #{artifact}"
      artifact.new(@cask, @command).install_phase
    end
  end

  def formula_dependencies
    unless @cask.depends_on_formula.empty?
      ohai 'Installing Formula dependencies from Homebrew'
      @cask.depends_on_formula.each do |dep_name|
        print "#{dep_name} ... "
        installed = @command.run(HOMEBREW_BREW_FILE,
                                 :args => ['list', '--versions', dep_name],
                                 :stderr => :silence).include?(dep_name)
        if installed
          puts "already installed"
        else
          @command.run!(HOMEBREW_BREW_FILE,
                        :args => ['install', dep_name])
          puts "done"
        end
      end
    end
  end

  def print_caveats
    self.class.print_caveats(@cask)
  end

  def uninstall
    odebug "Cask::Installer.uninstall"
    uninstall_artifacts
    purge_files
  end

  def uninstall_artifacts
    odebug "Un-installing artifacts"
    artifacts = Cask::Artifact.for_cask(@cask)
    odebug "#{artifacts.length} artifact/s defined", artifacts
    artifacts.each do |artifact|
      odebug "Un-installing artifact of class #{artifact}"
      artifact.new(@cask, @command).uninstall_phase
    end
  end

  def purge_files
    odebug "Purging files"
    if @cask.destination_path.exist?
      begin
        @cask.destination_path.rmtree
      rescue
        # in case of permissions problems
        if @cask.destination_path.exist?
          @command.run('/bin/chmod', :args => ['-R', '--', 'u+rwx', @cask.destination_path])
          @command.run('/bin/chmod', :args => ['-R', '-N',          @cask.destination_path])
          @cask.destination_path.rmtree
        end
      end
    end
    @cask.caskroom_path.rmdir_if_possible
  end
end
