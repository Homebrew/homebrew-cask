cask 'ticktick' do
  version '3.3.10,125'
  sha256 '2025acae60fd486335fd764b3ae32095997d91bc112562595a68cc5d381d139c'

  # appest-public.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://appest-public.s3.amazonaws.com/download/mac/TickTick_#{version.before_comma}_#{version.after_comma}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.ticktick.com/static/getApp/download?type=mac'
  name 'TickTick'
  homepage 'https://www.ticktick.com/home'

  auto_updates true

  app 'TickTick.app'
end
