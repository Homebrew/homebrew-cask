cask :v1 => 'tg-pro' do
  version '2.6'
  sha256 '2b84e6dbae6516584c8303fc7e7305026b7c62cf9eec94435bb8ee68c8859824'

  url "http://www.tunabellysoftware.com/resources/TGPro_#{version.gsub('.','_')}.zip"
  name 'TG Pro'
  homepage 'http://www.tunabellysoftware.com/tgpro/'
  license :commercial

  app 'TG Pro.app'
end
