module Cask::Locations
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def tapspath
      HOMEBREW_REPOSITORY.join "Library", "Taps"
    end

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

    def widgetdir
      @widgetdir ||= Pathname.new('~/Library/Widgets').expand_path
    end

    def widgetdir=(_widgetdir)
      @widgetdir = _widgetdir
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

    def screen_saverdir
      @screen_saverdir ||= Pathname.new('~/Library/Screen Savers').expand_path
    end

    def screen_saverdir=(_screen_saverdir)
      @screen_saverdir = _screen_saverdir
    end

    def default_tap
      @default_tap ||= 'phinze-cask'
    end

    def default_tap=(_tap)
      @default_tap = _tap
    end

    def path(cask_title)
      if cask_title.include?('/')
        cask_with_tap = cask_title
      else
        cask_with_tap = all_titles.detect { |tap_and_title|
          _, title = tap_and_title.split('/')
          title == cask_title
        }
      end

      if cask_with_tap
        tap, cask = cask_with_tap.split('/')
        tapspath.join(tap, 'Casks', "#{cask}.rb")
      else
        tapspath.join(default_tap, 'Casks', "#{cask_title}.rb")
      end
    end
  end
end
