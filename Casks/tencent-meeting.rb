cask "tencent-meeting" do
  arch arm: "arm64", intel: "x86_64"

  on_intel do
    version "3.11.3.453,65f61cbaa77157dfc47de068775210e3"
    sha256 "afe99aa226eb4f0a2ee597aca70269f0264572a48ebb3740f29d09c7f9898e9e"
  end
  on_arm do
    version "3.11.3.453,b6b7d21236121ae3d14f4461157bae33"
    sha256 "a57fe2c9adb2777c1cbee4cd88dcef085ad2d3cb1049378230a25bcff4bcd4d8"
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
