cask 'webpquicklook' do
  version '2.2'
  sha256 'b7495e90589f2f9ee13c331d840ff638399817bd906da61aa32bb21a9c26f32b'

  url "https://github.com/dchest/webp-quicklook/releases/download/v#{version}/WebP-#{version}.qlgenerator.zip"
  appcast 'https://github.com/dchest/webp-quicklook/releases.atom'
  name 'WebP QuickLook Plugin'
  homepage 'https://github.com/dchest/webp-quicklook'

  qlplugin 'WebP.qlgenerator'
end
