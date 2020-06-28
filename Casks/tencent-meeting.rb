cask 'tencent-meeting' do
  version '1.5.8.453'
  sha256 'aa0c38fec4dc9bfa8d47e525715a134bfba277f5b5088259e4adc54964928dea'

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
