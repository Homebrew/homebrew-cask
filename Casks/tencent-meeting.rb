cask "tencent-meeting" do
  if Hardware::CPU.intel?
    version "2.7.5.434,727e439f79327c7c63677a9097353d3d"
    sha256 "f072dafd53fd816acc95542dae0f750727704532b81b7afc5861e0cb9df75d71"
    url "https://updatecdn.meeting.qq.com/#{version.after_comma}/TencentMeeting_0300000000_#{version.before_comma}.publish.x86_64.dmg",
        verified: "qq.com/"
  else
    version "2.7.5.434,2a4a7de84f9518b5ba69df232eb7a1d0"
    sha256 "7e5c56185e9f29c3b6db10283101118e1d02b3d87178e45d90d9a0a27b6dc9fa"
    url "https://updatecdn.meeting.qq.com/#{version.after_comma}/TencentMeeting_0300000000_#{version.before_comma}.publish.arm64.dmg",
        verified: "qq.com/"
  end

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
