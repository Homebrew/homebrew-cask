cask 'ticktick' do
  version '2.9.02,89'
  sha256 '3536e3a8070ab44e8632d1ae085f950567490cead848c45dd4eccad8043242dd'

  # appest-public.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://appest-public.s3.amazonaws.com/download/mac/TickTick_#{version.before_comma}_#{version.after_comma}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.ticktick.com/static/getApp/download?type=mac'
  name 'TickTick'
  homepage 'https://www.ticktick.com/home'

  app 'TickTick.app'
end
