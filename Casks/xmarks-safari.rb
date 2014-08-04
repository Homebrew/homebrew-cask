class XmarksSafari < Cask
  version '2.0.13'
  sha256 '802666565765dd5d60b6aa6d61e073cea4fb4f59a899b105b6195e7525409775'

  url 'https://static.xmarks.com/clients/safari/xmarks_for_safari_2.0.13.dmg'
  homepage 'http://www.xmarks.com/'

  install 'Xmarks for Safari Installer.pkg'
  uninstall :pkgutil => [
                         'com.xmarks.XmarksForSafari.pkg',
                         'com.xmarks.XmarksPreferencePane.pkg',
                        ]
end
