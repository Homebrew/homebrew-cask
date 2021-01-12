cask "tencent-meeting" do
  version "2.6.0.498,8879f4061090bb94c3c2c07c79c0446d"
  sha256 "889037986756dc354ad3f77d77082be649ebcea7765828f6187c54fe0feee11b"

  url "https://updatecdn.meeting.qq.com/#{version.after_comma}/TencentMeeting_0300000000_#{version.before_comma}.publish.dmg",
      verified: "qq.com/"
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
