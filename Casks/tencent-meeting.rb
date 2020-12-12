cask "tencent-meeting" do
  version "2.4.0.449,b24d54ce3ffe7ebdde808978d1af5b9d"
  sha256 "aab20ef8b7a121cff2c52af016104219ce993482ab7ce3ef5e07c612b0de985d"

  # qq.com was verified as official when first introduced to the cask
  url "https://updatecdn.meeting.qq.com/#{version.after_comma}/TencentMeeting_0300000000_#{version.before_comma}.publish.dmg"
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
