cask 'tencent-meeting' do
  version '1.6.5.441'
  sha256 '730d2ebf130e029cc350424e2f75fff6bdae58e87abac4421211125fbd04bbe5'

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
