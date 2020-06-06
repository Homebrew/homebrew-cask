cask 'tencent-meeting' do
  version '1.5.8.448'
  sha256 '9ebc6e47e76752f708aef4175450241f3c09ad5ac3d093cdff9fc52cfda8d510'

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
