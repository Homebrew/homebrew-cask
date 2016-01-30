cask 'tg-pro' do
  version '2.9.6'
  sha256 '25efbea93252b1663b61c277ccb384901a3307240fc20fca78bfd755eecc19a8'

  url "https://www.tunabellysoftware.com/resources/TGPro_#{version.dots_to_underscores}.zip"
  appcast 'https://www.tunabellysoftware.com/resources/sparkle/tgpro/profileInfo.php',
          checkpoint: '02c1b37a912451494ffa8bd5e1fa1672122eae3b2618d1a85180736209a46481'
  name 'TG Pro'
  homepage 'https://www.tunabellysoftware.com/tgpro/'
  license :commercial

  app 'TG Pro.app'
end
