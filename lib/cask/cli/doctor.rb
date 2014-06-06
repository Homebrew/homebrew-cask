class Cask::CLI::Doctor
  def self.run
    alt_taps           = notfound_string
    default_cask_count = notfound_string
    homebrew_origin    = notfound_string

    begin
      alt_taps = Pathname.glob(HOMEBREW_REPOSITORY.join 'Library', 'Taps', '*', '*', 'Casks').map(&:dirname) -
                 [fq_default_tap]
      alt_taps = nil unless alt_taps.length > 0
    rescue StandardError; end

    begin
      default_cask_count = HOMEBREW_REPOSITORY.join(fq_default_tap, 'Casks').children.count(&:file?)
    rescue StandardError
      default_cask_count = "0 #{error_string %Q{Error reading #{fq_default_tap}}}"
    end

    begin
      HOMEBREW_REPOSITORY.cd do
        homebrew_origin = Cask::SystemCommand.run('git',
                                                  :args => %w{config --get remote.origin.url},
                                                  :stderr => :silence).strip
      end
      if homebrew_origin !~ %r{\S}
        homebrew_origin = "#{none_string} #{error_string}"
      elsif homebrew_origin !~ %r{(mxcl|Homebrew)/homebrew(\.git)?\Z}
        homebrew_origin.concat " #{error_string 'warning: nonstandard origin'}"
      end
    rescue StandardError
      homebrew_origin = error_string 'Not Found - Error running git'
    end

    ohai 'OS X Version:',                                    render_with_none_as_error( MACOS_FULL_VERSION )
    ohai "Hardware Architecture:",                           render_with_none_as_error( "#{Hardware::CPU.type}-#{Hardware::CPU.bits}" )
    ohai 'Ruby Version:',                                    render_with_none_as_error( "#{RUBY_VERSION}-p#{RUBY_PATCHLEVEL}" )
    ohai 'Ruby Path:',                                       render_with_none_as_error( RUBY_PATH )
    ohai 'Homebrew Version:',                                render_with_none_as_error( HOMEBREW_VERSION )
    ohai 'Homebrew Executable Path:',                        render_with_none_as_error( HOMEBREW_BREW_FILE )
    ohai 'Homebrew Cellar Path:',                            render_with_none_as_error( HOMEBREW_CELLAR )
    ohai 'Homebrew Repository Path:',                        render_with_none_as_error( HOMEBREW_REPOSITORY )
    ohai 'Homebrew Origin:',                                 render_with_none_as_error( homebrew_origin )
    ohai 'Homebrew-cask Version:',                           render_with_none_as_error( HOMEBREW_CASK_VERSION )
    ohai 'Homebrew-cask Default Tap Path:',                  render_with_none_as_error( fq_default_tap )
    ohai 'Homebrew-cask Alternate Cask Taps:',                        render_with_none( alt_taps )
    ohai 'Homebrew-cask Default Tap Cask Count:',            render_with_none_as_error( default_cask_count )
    ohai 'Contents of $LOAD_PATH:',                          render_with_none_as_error( $LOAD_PATH )
    ohai 'Contents of $RUBYLIB Environment Variable:',                render_with_none( ENV['RUBYLIB'] )
    ohai 'Contents of $RUBYOPT Environment Variable:',                render_with_none( ENV['RUBYOPT'] )
    ohai 'Contents of $RUBYPATH Environment Variable:',               render_with_none( ENV['RUBYPATH'] )
    ohai 'Contents of $RBENV_VERSION Environment Variable:',          render_with_none( ENV['RBENV_VERSION'] )
    ohai 'Contents of $GEM_HOME Environment Variable:',               render_with_none( ENV['GEM_HOME'] )
    ohai 'Contents of $GEM_PATH Environment Variable:',               render_with_none( ENV['GEM_PATH'] )
    ohai 'Contents of $BUNDLE_PATH Environment Variable:',            render_with_none( ENV['BUNDLE_PATH'] )
    ohai 'Contents of Locale Environment Variables:',                 render_with_none( locale_variables )
    ohai 'Running As Privileged User:',                      render_with_none_as_error( privileged_uid )
  end

  def self.fq_default_tap
    return @fq_default_tap if @fq_default_tap
    @fq_default_tap = notfound_string
    begin
      @fq_default_tap = HOMEBREW_REPOSITORY.join 'Library', 'Taps', Cask.default_tap
    rescue StandardError; end
    @fq_default_tap
  end

  def self.locale_variables
    ENV.keys.grep(/^(?:LC_\S+|LANG|LANGUAGE)\Z/).collect_concat { |v| %Q{#{v}="#{ENV[v]}"} }.sort
  end

  def self.privileged_uid
    privileged_uid = notfound_string
    begin
      privileged_uid = Process.euid == 0 ? "Yes #{error_string 'warning: not recommended'}" : 'No'
    rescue StandardError; end
    privileged_uid
  end

  def self.none_string
    '<NONE>'
  end

  def self.notfound_string
    "#{Tty.red}Not Found - Unknown Error#{Tty.reset}"
  end

  def self.error_string(string='Error')
    "#{Tty.red}(#{string})#{Tty.reset}"
  end

  def self.render_with_none(string)
    (string.nil? or not string.respond_to?(:to_s) or string.to_s.length == 0) ?
      none_string :
      string
  end

  def self.render_with_none_as_error(string)
    (string.nil? or not string.respond_to?(:to_s) or string.to_s.length == 0) ?
      "#{none_string} #{error_string}" :
       string
  end

  def self.help
    "checks for configuration issues"
  end
end
