cask 'tg-pro' do
  version '2.15'
  sha256 '7aa5709e61c817e883d9ef611f719eb6c7d9885db70a9f9fb58911af92a14808'

  url "https://www.tunabellysoftware.com/resources/TGPro_#{version.dots_to_underscores}.zip"
  appcast 'https://www.tunabellysoftware.com/resources/sparkle/tgpro/profileInfo.php',
          checkpoint: '6e52748c50f375e69acb9d181e48a0308fd708ea7572dc018cb4053866a9a619'
  name 'TG Pro'
  homepage 'https://www.tunabellysoftware.com/tgpro/'
  license :commercial

  app 'TG Pro.app'
end
