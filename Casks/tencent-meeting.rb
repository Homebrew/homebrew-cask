cask "tencent-meeting" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  if Hardware::CPU.intel?
    version "3.8.6.474,52ef4845fed86a9bbc514f03fd1fa3da"
    sha256 "d3a165e01e2af3fb8c36874155a9cf55fc5c2572cb6ae4adb252046f01c7515f"
  else
    version "3.8.6.474,6bcbdea6aced8739f04edbb90cf4a9a7"
    sha256 "8416bc532ffc9e904124ba99472aa71e73ec3a675a5be91663fbb4e516b3b2a1"
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
