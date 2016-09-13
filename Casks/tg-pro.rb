cask 'tg-pro' do
  version '2.16'
  sha256 '6f66cafd8de01ca8557cd143915710f35fd5523687595f7c919f7bc7db69e566'

  url "https://www.tunabellysoftware.com/resources/TGPro_#{version.dots_to_underscores}.zip"
  appcast 'https://www.tunabellysoftware.com/resources/sparkle/tgpro/profileInfo.php',
          checkpoint: '86470e47c9eb7c58d8cf6916c263244aa94eca5f40852161b724334654e7b0ab'
  name 'TG Pro'
  homepage 'https://www.tunabellysoftware.com/tgpro/'
  license :commercial

  app 'TG Pro.app'
end
