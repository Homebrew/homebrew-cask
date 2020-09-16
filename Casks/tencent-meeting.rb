cask "tencent-meeting" do
  version "2.0.0.426"
  sha256 "eb38b1adc490c695800e145181caec4fa4dcea186d7437c585195a3be17875c6"

  # qq.com was verified as official when first introduced to the cask
  url "https://updatecdn.meeting.qq.com/0521b044d26a3dee5ff9fa7352ff856f/TencentMeeting_0300000000_#{version}.publish.dmg"
  name "Tencent Meeting"
  name "腾讯会议"
  homepage "https://meeting.tencent.com/"

  auto_updates true

  app "TencentMeeting.app"

  zap trash: [
    "~/Library/Caches/com.tencent.meeting",
    "~/Library/Containers/com.tencent.meeting",
    "~/Library/Preferences/com.tencent.meeting.plist",
  ]
end
