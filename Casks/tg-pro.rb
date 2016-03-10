cask 'tg-pro' do
  version '2.9.9'
  sha256 '312ea321e89540d4fbfbf5226d2cd60666b5a7d20eb58f785bbcd47f6c14a4d6'

  url "https://www.tunabellysoftware.com/resources/TGPro_#{version.dots_to_underscores}.zip"
  appcast 'https://www.tunabellysoftware.com/resources/sparkle/tgpro/profileInfo.php',
          checkpoint: 'b9a9e4be495eb8c838a4147117802c2df369f4f599a0d0a3e0c635f4116e27ce'
  name 'TG Pro'
  homepage 'https://www.tunabellysoftware.com/tgpro/'
  license :commercial

  app 'TG Pro.app'
end
