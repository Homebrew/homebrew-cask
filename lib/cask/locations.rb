module Cask::Locations
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def tapspath
      HOMEBREW_PREFIX.join "Library", "Taps"
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
