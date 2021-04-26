cask "tencent-meeting" do
  if Hardware::CPU.intel?
    version "2.9.4.401,b151cc342f235237a2702235d2220208"
    sha256 "1e8f1123484e979944a3db9bef4ad1e78a82c82b0a602f4266b58b252b90e25c"
    url "https://updatecdn.meeting.qq.com/#{version.after_comma}/TencentMeeting_0300000000_#{version.before_comma}.publish.x86_64.dmg",
        verified: "qq.com/"
  else
    version "2.9.4.401,4a9e49af106a6edf8ff31e5e095fa5e1"
    sha256 "e4c033d34176cfa963de9cfe0cd6d883f265e151a1ad479c25a93a7857b97e8e"
    url "https://updatecdn.meeting.qq.com/#{version.after_comma}/TencentMeeting_0300000000_#{version.before_comma}.publish.arm64.dmg",
        verified: "qq.com/"
  end

  name "Tencent Meeting"
  name "腾讯会议"
  desc "Cloud video conferencing"
  homepage "https://meeting.tencent.com/"

  livecheck do
    skip "No version information available"
  end

  auto_updates true

  app "TencentMeeting.app"

  zap trash: [
    "~/Library/Caches/com.tencent.meeting",
    "~/Library/Containers/com.tencent.meeting",
    "~/Library/Preferences/com.tencent.meeting.plist",
  ]
end
