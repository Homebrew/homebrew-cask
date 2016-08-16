cask 'tg-pro' do
  version '2.13'
  sha256 '47f3f3534e523c390a2acfc0286463577f56d9d85c0e1ef8f2564db23e01df0f'

  url "https://www.tunabellysoftware.com/resources/TGPro_#{version.dots_to_underscores}.zip"
  appcast 'https://www.tunabellysoftware.com/resources/sparkle/tgpro/profileInfo.php',
          checkpoint: 'd7c13baa3d2453414f8f6fac166087763f98d7f3e06b69aa2a6cf3fe9a8ef949'
  name 'TG Pro'
  homepage 'https://www.tunabellysoftware.com/tgpro/'
  license :commercial

  app 'TG Pro.app'
end
