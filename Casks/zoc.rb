cask 'zoc' do
  version '7.15.6'
  sha256 '3d272cbe3668e3dcace83cee2d758e99fe437931579be6dba1a18d6137605b4a'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "http://www.emtec.com/downloads/zoc/zoc#{version.no_dots}_changes.txt",
          checkpoint: 'ca1bd0b7def835a58a930542f45ce3d3b8d9ce57d35421d9ba694ca2efc2f099'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
