cask "tencent-meeting" do
  arch arm: "arm64", intel: "x86_64"

  on_intel do
    version "3.13.5.435,c57d6fb5198a489fce92a064dd0a09dd"
    sha256 "9b9a67f3fddafd8e2190a086f2853b4d33cb6facfddbab4e1c8bc8f856c3a4e1"
  end
  on_arm do
    version "3.13.5.435,4b1ce1367f3b044ddfaf37f5671859af"
    sha256 "287aceb3e2a3f5c5379ec991ee6a5e66bb958270024e7b14e6403b8b0a48f52a"
  end

  url "https://updatecdn.meeting.qq.com/cos/#{version.csv.second}/TencentMeeting_0300000000_#{version.csv.first}.publish.#{arch}.dmg",
      verified: "updatecdn.meeting.qq.com/cos/"
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
