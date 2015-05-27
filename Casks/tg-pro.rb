cask :v1 => 'tg-pro' do
  version '2.7.2'
  sha256 '6708a9762a62d30e2e83b37cd6c7597d0650e239b5b0f104ef85e5aa25f0c880'

  url "http://www.tunabellysoftware.com/resources/TGPro_#{version.gsub('.','_')}.zip"
  name 'TG Pro'
  appcast 'http://tunabellysoftware.com/resources/sparkle/tgpro/profileInfo.php',
          :sha256 => '32bc0377d02e0b6d1657ea606b18f7d9fb852084060a0f41a5ffa78a88334d7f'
  homepage 'http://www.tunabellysoftware.com/tgpro/'
  license :commercial

  app 'TG Pro.app'
end
