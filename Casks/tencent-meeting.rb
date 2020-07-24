cask 'tencent-meeting' do
  version '1.7.0.430'
  sha256 '2fca7f14906a5461bb0a8661d2d4d669a758ddf4401169d6ef5efe0468a10e45'

  # qq.com was verified as official when first introduced to the cask
  url "https://down.qq.com/download/TencentMeeting_0300000000_#{version}.publish.dmg"
  name 'Tencent Meeting'
  name '腾讯会议'
  homepage 'https://meeting.tencent.com/'

  auto_updates true

  app 'TencentMeeting.app'

  zap trash: [
               '~/Library/Caches/com.tencent.meeting',
               '~/Library/Containers/com.tencent.meeting',
               '~/Library/Preferences/com.tencent.meeting.plist',
             ]
end
