cask 'tg-pro' do
  version '2.9.10'
  sha256 '7e950a877d4dcf8027df2772914c60662d5587d642449158c6f696b19b259f77'

  url "https://www.tunabellysoftware.com/resources/TGPro_#{version.dots_to_underscores}.zip"
  appcast 'https://www.tunabellysoftware.com/resources/sparkle/tgpro/profileInfo.php',
          checkpoint: '884db6ddcfcb38f0ca86bb8347f37db4188f1361f74dbd6c415d4b18a2260ae7'
  name 'TG Pro'
  homepage 'https://www.tunabellysoftware.com/tgpro/'
  license :commercial

  app 'TG Pro.app'
end
