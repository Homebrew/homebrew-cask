cask 'ticktick' do
  version '3.6.70,144'
  sha256 '20e77372090f41463c1a1bafc3a852e01f2dcf7aa1e901af4dda520b6a74e09c'

  # appest-public.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://appest-public.s3.amazonaws.com/download/mac/TickTick_#{version.before_comma}_#{version.after_comma}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.ticktick.com/static/getApp/download?type=mac'
  name 'TickTick'
  homepage 'https://www.ticktick.com/home'

  auto_updates true

  app 'TickTick.app'
end
