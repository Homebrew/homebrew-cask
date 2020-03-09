cask 'ticktick' do
  version '3.4.51,131'
  sha256 '462c053b9a6090ed552336ffaa5759b9e147603ab9f5c0eb0083142b69f48a02'

  # appest-public.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://appest-public.s3.amazonaws.com/download/mac/TickTick_#{version.before_comma}_#{version.after_comma}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.ticktick.com/static/getApp/download?type=mac'
  name 'TickTick'
  homepage 'https://www.ticktick.com/home'

  auto_updates true

  app 'TickTick.app'
end
