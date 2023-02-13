cask "tencent-meeting" do
  arch arm: "arm64", intel: "x86_64"

  on_intel do
    version "3.14.7.407,e12d770b7dba1aa37791964b4c631431"
    sha256 "5c67f180a22beebc44ee933d6a4538829778b038eacf7daf5cf94c6912b30779"
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
