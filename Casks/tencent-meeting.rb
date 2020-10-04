cask "tencent-meeting" do
  version "2.0.0.434,90f6eff0c7f3f5638599225c41ddba6b"
  sha256 "86b17c09e1dd951fc4f5b75d653fffda140f4921428906d9c246c15a58b832e2"

  # qq.com was verified as official when first introduced to the cask
  url "https://updatecdn.meeting.qq.com/#{version.after_comma}/TencentMeeting_0300000000_#{version.before_comma}.publish.dmg"
  name "Tencent Meeting"
  name "腾讯会议"
  desc "Cloud video conferencing"
  homepage "https://meeting.tencent.com/"

  auto_updates true

  app "TencentMeeting.app"

  zap trash: [
    "~/Library/Caches/com.tencent.meeting",
    "~/Library/Containers/com.tencent.meeting",
    "~/Library/Preferences/com.tencent.meeting.plist",
  ]
end
