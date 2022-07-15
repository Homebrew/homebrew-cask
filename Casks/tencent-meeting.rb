cask "tencent-meeting" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  if Hardware::CPU.intel?
    version "3.9.6.413,e72c0c486ffce6d18ee2051a5548d492"
    sha256 "41fca069249c2ccebe7c516b80bd5b3af31d9bd3572697dd77434015f997aaf8"
  else
    version "3.9.6.413,fb1ce675b86a2a6f17d5fc3b785846b9"
    sha256 "cea6d42cdb1860af402414666c8a8507ed7f65114d131652413e8b98304ea90c"
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
