cask "tencent-meeting" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  if Hardware::CPU.intel?
    version "3.9.7.433,1302be9fbf4dbb7d3a85b45e90606aa0"
    sha256 "55f879dc3b5bbfa5419a3def4bb5663c7ea387136a4d87e6404387a602523ad9"
  else
    version "3.9.7.433,113348a09002e75b83238b10425de3e1"
    sha256 "fcd768bd6dbd72874c941b27007393b05a3073894ef847c0ede60e9b509ddf82"
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
