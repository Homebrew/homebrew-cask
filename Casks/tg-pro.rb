cask 'tg-pro' do
  version '2.9.11'
  sha256 '6808aaddd9ab19af4579a59145ad00ef52c5d690207687bd691c297df8599a90'

  url "https://www.tunabellysoftware.com/resources/TGPro_#{version.dots_to_underscores}.zip"
  appcast 'https://www.tunabellysoftware.com/resources/sparkle/tgpro/profileInfo.php',
          checkpoint: '412b7a945f1149e98296238cf5e91cbf6d3d84642ffe47ea5b6b21b8465388da'
  name 'TG Pro'
  homepage 'https://www.tunabellysoftware.com/tgpro/'
  license :commercial

  app 'TG Pro.app'
end
