cask "tencent-meeting" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  if Hardware::CPU.intel?
    version "3.8.4.421,2ddd0b88cb3d4c0250da7dda8d18ce80"
    sha256 "92f78e3fc97d7d7d1e9268c3d204078c921622ca08bfbd40581f2e4c8986aee1"
  else
    version "3.8.4.421,54df800f5fdb8d593977ada9a4ef867a"
    sha256 "d2f5a1bfa6121411ef8f45ebc5abffb209c0b7f6ab94fda3b689f53bbc3a32f5"
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
