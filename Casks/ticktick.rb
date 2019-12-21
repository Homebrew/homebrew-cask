cask 'ticktick' do
  version '3.3.10,122'
  sha256 '8620ee3cfe6449f3a99a9a60002706f1cc6ee0ac0951c5c2d05921e3ea612e5c'

  # appest-public.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://appest-public.s3.amazonaws.com/download/mac/TickTick_#{version.before_comma}_#{version.after_comma}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.ticktick.com/static/getApp/download?type=mac'
  name 'TickTick'
  homepage 'https://www.ticktick.com/home'

  auto_updates true

  app 'TickTick.app'
end
