cask "tencent-meeting" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  if Hardware::CPU.intel?
    version "3.10.3.407,60923d8fa0b615108851534769f784ab"
    sha256 "f3870e2ba537439addf2973aec9085c354149610f5319758b59c54aab8ced44e"
  else
    version "3.10.3.407,370e00e1c8b1d580f6bfe6c682c5bb3f"
    sha256 "515f2285343c455257ef8fc22a7221ba1670b668568e0d9de955a6610055162e"
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
