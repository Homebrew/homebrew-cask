cask :v1 => 'tg-pro' do
  version '2.8'
  sha256 '6fd5902c492b8ae5e547b69f68325e224893bddfd55c60ea596715c6b89b2cde'

  url "http://www.tunabellysoftware.com/resources/TGPro_#{version.gsub('.','_')}.zip"
  name 'TG Pro'
  appcast 'http://tunabellysoftware.com/resources/sparkle/tgpro/profileInfo.php',
          :sha256 => '32bc0377d02e0b6d1657ea606b18f7d9fb852084060a0f41a5ffa78a88334d7f'
  homepage 'http://www.tunabellysoftware.com/tgpro/'
  license :commercial

  app 'TG Pro.app'
end
