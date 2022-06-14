cask "tencent-meeting" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  if Hardware::CPU.intel?
    version "3.8.5.451,da109baa04865d571c53801b350bbee0"
    sha256 "9f9dc51b24ad850dc255032612e570189d9eba873ae2a0e504096e4f955171b"
  else
    version "3.8.5.451,dd83ae7aa1a2c2da91271f23381659b1"
    sha256 "897e336bce54c3060f480c371be71736e5ce1e5c981fed3a7182e40b4f47501c"
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
