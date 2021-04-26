cask "tencent-meeting" do
  if Hardware::CPU.intel?
    version "2.10.5.408,47e717cd17e9ac43e48cab9628defd50"
    sha256 "f4102a85732e84c74f0792b2ebd2425bf55a6b00593cd8081591d03bafba511b"
    url "https://updatecdn.meeting.qq.com/#{version.after_comma}/TencentMeeting_0300000000_#{version.before_comma}.publish.x86_64.dmg",
        verified: "qq.com/"
  else
    version "2.10.5.408,65a04e9daebb97fee0941fe1c1027153"
    sha256 "dcf67054496e2df1dc2194c65971548e07e7d284c7699c45d74111fbc9edf086"
    url "https://updatecdn.meeting.qq.com/#{version.after_comma}/TencentMeeting_0300000000_#{version.before_comma}.publish.arm64.dmg",
        verified: "qq.com/"
  end

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
