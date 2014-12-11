cask :v1 => 'tg-pro' do
  version '2.4'
  sha256 '0711f263bcada65f968b439e61cc938b354eaaaa490f73be375d5b5f6f642836'

  url "http://www.tunabellysoftware.com/resources/TGPro_#{version.gsub('.','_')}.zip"
  name 'TG Pro'
  homepage 'http://www.tunabellysoftware.com/tgpro/'
  license :commercial

  app 'TG Pro.app'
end
