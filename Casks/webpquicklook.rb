cask :v1 => 'webpquicklook' do
  version '2.1'
  sha256 '9efbdd2b3dcb44d41a53c1cb6ce64397fd00bd399189b1b742d2f4b2de28f437'

  url "https://github.com/dchest/webp-quicklook/releases/download/v#{version}/WebP-#{version}.qlgenerator.zip"
  homepage 'https://github.com/dchest/webp-quicklook'
  license :mit

  qlplugin 'WebP.qlgenerator'
end
