class XmarksSafari < Cask
  version '2.0.16'
  sha256 '502038e06d4dcdded6ccc3b27da55dc62a0b52a099872e6d499045937ffba377'

  url "https://static.xmarks.com/clients/safari/xmarks_for_safari_#{version}.dmg"
  homepage 'http://www.xmarks.com/'

  install 'Xmarks for Safari Installer.pkg'
  uninstall :pkgutil => [
                         'com.xmarks.XmarksForSafari.pkg',
                         'com.xmarks.XmarksPreferencePane.pkg',
                        ]
end
