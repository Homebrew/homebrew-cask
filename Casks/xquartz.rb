class Xquartz < Cask
  url 'http://xquartz.macosforge.org/downloads/SL/XQuartz-2.7.5.dmg'
  homepage 'http://xquartz.macosforge.org/'
  version '2.7.5'
  sha256 '4382ff78cef5630fb6b8cc982da2e5a577d8cc5dddd35a493b50bad2fcf5e34a'
  install 'XQuartz.pkg'
  uninstall :quit => 'org.macosforge.xquartz.X11',
            :pkgutil => 'org.macosforge.xquartz.pkg'
end
