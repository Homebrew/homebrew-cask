cask 'tg-pro' do
  version '2.9.5'
  sha256 '6f8cb96bf91ee3a69a5f91c47232427826e5516355d45656c4be9118d5c5b78a'

  url "https://www.tunabellysoftware.com/resources/TGPro_#{version.dots_to_underscores}.zip"
  appcast 'https://www.tunabellysoftware.com/resources/sparkle/tgpro/profileInfo.php',
          checkpoint: 'b36f84edfaf65508dba094649cac418bf527ee486552f2d0f5a883df1a23227e'
  name 'TG Pro'
  homepage 'https://www.tunabellysoftware.com/tgpro/'
  license :commercial

  app 'TG Pro.app'
end
