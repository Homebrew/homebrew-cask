cask 'tg-pro' do
  version '2.9.7'
  sha256 '86a3414079d543738e2664f4707d6fd774dc8de07d1b5451a4f40159d10367f3'

  url "https://www.tunabellysoftware.com/resources/TGPro_#{version.dots_to_underscores}.zip"
  appcast 'https://www.tunabellysoftware.com/resources/sparkle/tgpro/profileInfo.php',
          checkpoint: '4041f67a14d80be892907254862110161ca3a9f487b292b07b192faedeb0d9ae'
  name 'TG Pro'
  homepage 'https://www.tunabellysoftware.com/tgpro/'
  license :commercial

  app 'TG Pro.app'
end
