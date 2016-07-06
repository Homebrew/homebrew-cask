cask 'tg-pro' do
  version '2.11'
  sha256 'b33e4fde4c7eeb09635f2c479ac564f3ec7c7358d18857f595c6caec52d47aa9'

  url "https://www.tunabellysoftware.com/resources/TGPro_#{version.dots_to_underscores}.zip"
  appcast 'https://www.tunabellysoftware.com/resources/sparkle/tgpro/profileInfo.php',
          checkpoint: 'a3bf0fc61611f2311e3cdb8d2a45dd94a428b93c05975952d5c99fc1905c3c0d'
  name 'TG Pro'
  homepage 'https://www.tunabellysoftware.com/tgpro/'
  license :commercial

  app 'TG Pro.app'
end
