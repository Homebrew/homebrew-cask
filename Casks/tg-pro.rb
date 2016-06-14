cask 'tg-pro' do
  version '2.9.12'
  sha256 '4bb8ee6a07f70d563d09b20b60dae09cb0f17efca6f7f1a83260fd5b0dc85911'

  url "https://www.tunabellysoftware.com/resources/TGPro_#{version.dots_to_underscores}.zip"
  appcast 'https://www.tunabellysoftware.com/resources/sparkle/tgpro/profileInfo.php',
          checkpoint: 'be3775c1bc46333252de6e9dcb89598aabf436c52896b2c3757388a007d00f45'
  name 'TG Pro'
  homepage 'https://www.tunabellysoftware.com/tgpro/'
  license :commercial

  app 'TG Pro.app'
end
