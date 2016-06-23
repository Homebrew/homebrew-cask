cask 'tg-pro' do
  version '2.10'
  sha256 '35d4c998ad7ee6d458db19b8e2d8566071e5911af1c6b1200c187675ab0330bb'

  url "https://www.tunabellysoftware.com/resources/TGPro_#{version.dots_to_underscores}.zip"
  appcast 'https://www.tunabellysoftware.com/resources/sparkle/tgpro/profileInfo.php',
          checkpoint: '1795be99171da282ed9d4c8bf760b185eb12792a219324253592230f5a351370'
  name 'TG Pro'
  homepage 'https://www.tunabellysoftware.com/tgpro/'
  license :commercial

  app 'TG Pro.app'
end
