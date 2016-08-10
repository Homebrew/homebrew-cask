cask 'tg-pro' do
  version '2.12'
  sha256 'f0c617f600a1bb9f14b410a1a3d79aeb9737ce96df0a7983995980b76eac9a88'

  url "https://www.tunabellysoftware.com/resources/TGPro_#{version.dots_to_underscores}.zip"
  appcast 'https://www.tunabellysoftware.com/resources/sparkle/tgpro/profileInfo.php',
          checkpoint: '6c0f17ec5cf0f340b8f9dcf33270fc724bce12135ae60c7ff78344a1cb40dd5f'
  name 'TG Pro'
  homepage 'https://www.tunabellysoftware.com/tgpro/'
  license :commercial

  app 'TG Pro.app'
end
