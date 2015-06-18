cask :v1 => 'tg-pro' do
  version '2.7.4'
  sha256 '94df19f67316c900929542445d7d0b86a97c6605bb353b492b12306663d0cd58'

  url "http://www.tunabellysoftware.com/resources/TGPro_#{version.gsub('.','_')}.zip"
  name 'TG Pro'
  appcast 'http://tunabellysoftware.com/resources/sparkle/tgpro/profileInfo.php',
          :sha256 => '32bc0377d02e0b6d1657ea606b18f7d9fb852084060a0f41a5ffa78a88334d7f'
  homepage 'http://www.tunabellysoftware.com/tgpro/'
  license :commercial

  app 'TG Pro.app'
end
