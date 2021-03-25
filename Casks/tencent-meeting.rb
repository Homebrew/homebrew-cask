cask "tencent-meeting" do
  if Hardware::CPU.intel?
    version "2.8.8.403,59b6424ee3fb1f46a1c4e617425ec179"
    sha256 "5d57d76a951eeae18bea2978dd665e15dd1d51da1e8a6d91c8d0288834c112e2"
    url "https://updatecdn.meeting.qq.com/#{version.after_comma}/TencentMeeting_0300000000_#{version.before_comma}.publish.x86_64.dmg",
        verified: "qq.com/"
  else
    version "2.8.8.403,facd5a060563cdaec1df7aa71c617514"
    sha256 "7af75d73f14f7cc1a0d743df9da4666c9c4ae22b481719ba8fe52f7b089d54a5"
    url "https://updatecdn.meeting.qq.com/#{version.after_comma}/TencentMeeting_0300000000_#{version.before_comma}.publish.arm64.dmg",
        verified: "qq.com/"
  end

  name "Tencent Meeting"
  name "腾讯会议"
  desc "Cloud video conferencing"
  homepage "https://meeting.tencent.com/"

  auto_updates true

  app "TencentMeeting.app"

  zap trash: [
    "~/Library/Caches/com.tencent.meeting",
    "~/Library/Containers/com.tencent.meeting",
    "~/Library/Preferences/com.tencent.meeting.plist",
  ]
end
