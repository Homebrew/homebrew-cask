module Hbc::Locations
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def caskroom
      @@caskroom ||= Pathname('/opt/homebrew-cask/Caskroom')
    end

    def caskroom=(caskroom)
      @@caskroom = caskroom
    end

    def appdir
      @appdir ||= Pathname.new('~/Applications').expand_path
    end

    def appdir=(_appdir)
      @appdir = _appdir
    end

    def prefpanedir
      @prefpanedir ||= Pathname.new('~/Library/PreferencePanes').expand_path
    end

    def prefpanedir=(_prefpanedir)
      @prefpanedir = _prefpanedir
    end

    def qlplugindir
      @qlplugindir ||= Pathname.new('~/Library/QuickLook').expand_path
    end

    def qlplugindir=(_qlplugindir)
      @qlplugindir = _qlplugindir
    end

    def fontdir
      @fontdir ||= Pathname.new('~/Library/Fonts').expand_path
    end

    def fontdir=(_fontdir)
      @fontdir = _fontdir
    end

    def colorpickerdir
      @colorpickerdir ||= Pathname.new('~/Library/ColorPickers').expand_path
    end

    def colorpickerdir=(_colorpickerdir)
      @colorpickerdir = _colorpickerdir
    end

    def servicedir
      @servicedir ||= Pathname.new('~/Library/Services').expand_path
    end

    def servicedir=(_servicedir)
      @servicedir = _servicedir
    end

    def binarydir
      @binarydir ||= Pathname.new('/usr/local/bin').expand_path
    end

    def binarydir=(_binarydir)
      @binarydir = _binarydir
    end

    def input_methoddir
      @input_methoddir ||= Pathname.new('~/Library/Input Methods').expand_path
    end

    def input_methoddir=(_input_methoddir)
      @input_methoddir = _input_methoddir
    end

    def internet_plugindir
      @internet_plugindir ||= Pathname.new('~/Library/Internet Plug-Ins').expand_path
    end

    def internet_plugindir=(_internet_plugindir)
      @internet_plugindir = _internet_plugindir
    end

    def audio_unit_plugindir
      @audio_unit_plugindir ||= Pathname.new('~/Library/Audio/Plug-Ins/Components').expand_path
    end

    def audio_unit_plugindir=(_audio_unit_plugindir)
      @audio_unit_plugindir = _audio_unit_plugindir
    end

    def vst_plugindir
      @vst_plugindir ||= Pathname.new('~/Library/Audio/Plug-Ins/VST').expand_path
    end

    def vst_plugindir=(_vst_plugindir)
      @vst_plugindir = _vst_plugindir
    end

    def screen_saverdir
      @screen_saverdir ||= Pathname.new('~/Library/Screen Savers').expand_path
    end

    def screen_saverdir=(_screen_saverdir)
      @screen_saverdir = _screen_saverdir
    end

    def default_tap
      @default_tap ||= 'caskroom/homebrew-cask'
    end

    def default_tap=(_tap)
      @default_tap = _tap
    end

    def default_tappath
      @default_tappath ||= homebrew_tapspath.join(default_tap)
    end

    def path(query)
      if query.include?('/')
        token_with_tap = query
      else
        token_with_tap = all_tokens.detect do |tap_and_token|
          user, repo, token = tap_and_token.split('/')
          token == query
        end
      end

      if token_with_tap
        user, repo, token = token_with_tap.split('/')
        # bug/todo: handle old-style 1-slash form: phinze-cask/token
        repo = 'homebrew-' + repo unless repo.match(/^homebrew-/)
        homebrew_tapspath.join(user, repo, 'Casks', "#{token}.rb")
      else
        homebrew_tapspath.join(default_tap, 'Casks', "#{query}.rb")
      end
    end

    def tcc_db
      @tcc_db ||= Pathname.new('/Library/Application Support/com.apple.TCC/TCC.db')
    end

    def pre_mavericks_accessibility_dotfile
      @pre_mavericks_accessibility_dotfile ||= Pathname.new('/private/var/db/.AccessibilityAPIEnabled')
    end

    def x11_executable
      @x11_executable ||= Pathname.new('/usr/X11/bin/X')
    end

    def x11_libpng
      @x11_libpng ||= [ Pathname.new('/opt/X11/lib/libpng.dylib'), Pathname.new('/usr/X11/lib/libpng.dylib') ]
    end

    def homebrew_executable
      @homebrew_executable ||= Pathname(ENV['HOMEBREW_BREW_FILE'] || Hbc::Utils.which('brew') || '/usr/local/bin/brew')
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
      @homebrew_tapspath ||= homebrew_repository.join *%w{Library Taps}
    end

    def homebrew_tapspath=(arg)
      @homebrew_tapspath = arg ? Pathname(arg) : arg
    end
  end
end
