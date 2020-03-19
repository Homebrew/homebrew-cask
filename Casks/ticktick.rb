cask 'ticktick' do
  version '3.4.52,134'
  sha256 'e1937f7c66037c5f06debf66595435f11e394e4d99aee4cbf9c6c0ea5d7e908a'

  # appest-public.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://appest-public.s3.amazonaws.com/download/mac/TickTick_#{version.before_comma}_#{version.after_comma}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.ticktick.com/static/getApp/download?type=mac'
  name 'TickTick'
  homepage 'https://www.ticktick.com/home'

  auto_updates true

  app 'TickTick.app'
end
