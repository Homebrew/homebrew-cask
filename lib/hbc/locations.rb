module Hbc::Locations
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def legacy_caskroom
      @legacy_caskroom ||= Pathname.new("/opt/homebrew-cask/Caskroom")
    end

    def default_caskroom
      @default_caskroom ||= homebrew_repository.join("Caskroom")
    end

    def caskroom
      @caskroom ||= begin
        if Hbc::Utils.path_occupied?(legacy_caskroom)
          opoo <<-EOS.undent
            The default Caskroom location has moved to #{default_caskroom}.

            Please migrate your Casks to the new location and delete #{legacy_caskroom},
            or if you would like to keep your Caskroom at #{legacy_caskroom}, add the
            following to your HOMEBREW_CASK_OPTS:

              --caskroom=#{legacy_caskroom}

            For more details on each of those options, see https://github.com/caskroom/homebrew-cask/issues/21913.
          EOS
          legacy_caskroom
        else
          default_caskroom
        end
      end
    end

    def caskroom=(caskroom)
      @caskroom = caskroom
    end

    attr_writer :appdir

    def appdir
      @appdir ||= Pathname.new("/Applications").expand_path
    end

    attr_writer :prefpanedir

    def prefpanedir
      @prefpanedir ||= Pathname.new("~/Library/PreferencePanes").expand_path
    end

    attr_writer :qlplugindir

    def qlplugindir
      @qlplugindir ||= Pathname.new("~/Library/QuickLook").expand_path
    end

    attr_writer :fontdir

    def fontdir
      @fontdir ||= Pathname.new("~/Library/Fonts").expand_path
    end

    attr_writer :colorpickerdir

    def colorpickerdir
      @colorpickerdir ||= Pathname.new("~/Library/ColorPickers").expand_path
    end

    attr_writer :servicedir

    def servicedir
      @servicedir ||= Pathname.new("~/Library/Services").expand_path
    end

    attr_writer :binarydir

    def binarydir
      @binarydir ||= Pathname.new("/usr/local/bin").expand_path
    end

    attr_writer :input_methoddir

    def input_methoddir
      @input_methoddir ||= Pathname.new("~/Library/Input Methods").expand_path
    end

    attr_writer :internet_plugindir

    def internet_plugindir
      @internet_plugindir ||= Pathname.new("~/Library/Internet Plug-Ins").expand_path
    end

    attr_writer :audio_unit_plugindir

    def audio_unit_plugindir
      @audio_unit_plugindir ||= Pathname.new("~/Library/Audio/Plug-Ins/Components").expand_path
    end

    attr_writer :vst_plugindir

    def vst_plugindir
      @vst_plugindir ||= Pathname.new("~/Library/Audio/Plug-Ins/VST").expand_path
    end

    attr_writer :vst3_plugindir

    def vst3_plugindir
      @vst3_plugindir ||= Pathname.new("~/Library/Audio/Plug-Ins/VST3").expand_path
    end

    attr_writer :screen_saverdir

    def screen_saverdir
      @screen_saverdir ||= Pathname.new("~/Library/Screen Savers").expand_path
    end

    attr_writer :default_tap

    def default_tap
      @default_tap ||= "caskroom/homebrew-cask"
    end

    def default_tappath
      @default_tappath ||= homebrew_tapspath.join(default_tap)
    end

    def path(query)
      query = query.sub(%r{\.rb$}i, "")
      token_with_tap = if query.include?("/")
                         query
                       else
                         all_tokens.detect do |tap_and_token|
                           tap_and_token.split("/")[2] == query
                         end
                       end

      if token_with_tap
        user, repo, token = token_with_tap.split("/")
        # FIXME/TODO: handle old-style 1-slash form: phinze-cask/token
        repo = "homebrew-" + repo unless repo =~ %r{^homebrew-}
        homebrew_tapspath.join(user, repo, "Casks", "#{token}.rb")
      else
        homebrew_tapspath.join(default_tap, "Casks", "#{query}.rb")
      end
    end

    def tcc_db
      @tcc_db ||= Pathname.new("/Library/Application Support/com.apple.TCC/TCC.db")
    end

    def pre_mavericks_accessibility_dotfile
      @pre_mavericks_accessibility_dotfile ||= Pathname.new("/private/var/db/.AccessibilityAPIEnabled")
    end

    def x11_executable
      @x11_executable ||= Pathname.new("/usr/X11/bin/X")
    end

    def x11_libpng
      @x11_libpng ||= [Pathname.new("/opt/X11/lib/libpng.dylib"), Pathname.new("/usr/X11/lib/libpng.dylib")]
    end

    def homebrew_executable
      @homebrew_executable ||= Pathname(ENV["HOMEBREW_BREW_FILE"] || Hbc::Utils.which("brew") || "/usr/local/bin/brew")
    end

    def homebrew_prefix
      # where Homebrew links
      @homebrew_prefix ||= homebrew_executable.dirname.parent
    end

    def homebrew_prefix=(arg)
      @homebrew_prefix = arg ? Pathname(arg) : arg
    end

    def homebrew_repository
      # where Homebrew's .git dir is found
      @homebrew_repository ||= homebrew_executable.realpath.dirname.parent
    end

    def homebrew_repository=(arg)
      @homebrew_repository = arg ? Pathname(arg) : arg
    end

    def homebrew_tapspath
      @homebrew_tapspath ||= homebrew_repository.join(*%w[Library Taps])
    end

    def homebrew_tapspath=(arg)
      @homebrew_tapspath = arg ? Pathname(arg) : arg
    end
  end
end
