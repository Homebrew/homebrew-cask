class Cask::Artifact::Pkg < Cask::Artifact::Base
  def self.artifact_dsl_key
    :pkg
  end

  def load_pkg_description(pkg_description)
    @pkg_relative_path = pkg_description.shift
    @pkg_install_opts = pkg_description.shift
    begin
      if @pkg_install_opts.respond_to?(:keys)
        @pkg_install_opts.assert_valid_keys( :allow_untrusted )
      elsif @pkg_install_opts
        raise
      end
      raise if pkg_description.nil?
    rescue StandardError => e
      raise CaskInvalidError.new(@cask, 'Bad pkg stanza')
    end
  end

  def pkg_install_opts(opt)
    @pkg_install_opts[opt] if @pkg_install_opts.respond_to?(:keys)
  end

  def pkg_relative_path
    @pkg_relative_path
  end

  def install_phase
    @cask.artifacts[:pkg].each { |pkg_description| run_installer(pkg_description) }
  end

  def uninstall_phase
    # Do nothing. Must be handled explicitly by a separate :uninstall stanza.
  end

  def run_installer(pkg_description)
    load_pkg_description pkg_description
    ohai "Running installer for #{@cask}; your password may be necessary."
    ohai "Package installers may write to any location; options such as --appdir are ignored."
    source = @cask.staged_path.join(pkg_relative_path)
    unless source.exist?
      raise CaskError.new "pkg source file not found: '#{source}'"
    end
    args = [
      '-pkg',    source,
      '-target', '/'
    ]
    args << '-verboseR' if ARGV.verbose?
    args << '-allowUntrusted' if pkg_install_opts :allow_untrusted
    @command.run!('/usr/sbin/installer', {:sudo => true, :args => args, :print_stdout => true})
  end
end
