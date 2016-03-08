cask 'xmarks-safari' do
  version '2.0.19'
  sha256 '2768d0c8952b736d8f79e2df30cfaf86420be4e466c6ed47b315c7e2437d3b17'

  url "https://static.xmarks.com/clients/safari/xmarks_for_safari_#{version}.dmg"
  name 'Xmarks'
  homepage 'https://www.xmarks.com/'
  license :gratis

  pkg 'Xmarks for Safari Installer.pkg'

  uninstall pkgutil: [
                       'com.xmarks.XmarksForSafari.pkg',
                       'com.xmarks.XmarksPreferencePane.pkg',
                     ]
end
