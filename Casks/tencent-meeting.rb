cask 'tencent-meeting' do
  version '1.5.0.461'
  sha256 'fc3191d0e3e9ace3891b9c87fc2c12d13e3cf89b217107669a045d74c49e1dbf'

  # qq.com was verified as official when first introduced to the cask
  url "https://down.qq.com/download/TencentMeeting_0300000000_#{version}.publish.dmg"
  name 'Tencent Meeting'
  name '腾讯会议'
  homepage 'https://meeting.tencent.com/'

  app 'TencentMeeting.app'

  zap trash: [
               '~/Library/Caches/com.tencent.meeting',
               '~/Library/Containers/com.tencent.meeting',
               '~/Library/Preferences/com.tencent.meeting.plist',
             ]
end
