cask "tencent-meeting" do
  version "1.8.0.475"
  sha256 "a2672a90559b9f5484532335ef72545c0860f3d773bd39a4702c8fd158f87e42"

  # qq.com was verified as official when first introduced to the cask
  url "https://down.qq.com/download/TencentMeeting_0300000000_#{version}.publish.dmg"
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
