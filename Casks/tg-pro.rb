cask 'tg-pro' do
  version '2.9.7'
  sha256 '88228e0ac8d44676659acef2f7ee9bfc8a962451c497aa5a9c4fb71ad5b3a196'

  url "https://www.tunabellysoftware.com/resources/TGPro_#{version.dots_to_underscores}.zip"
  appcast 'https://www.tunabellysoftware.com/resources/sparkle/tgpro/profileInfo.php',
          checkpoint: '7b292de4bfde7ea11a63b29d9ea1034f7239b96a72edc0e30f4ddc7f72c4786f'
  name 'TG Pro'
  homepage 'https://www.tunabellysoftware.com/tgpro/'
  license :commercial

  app 'TG Pro.app'
end
