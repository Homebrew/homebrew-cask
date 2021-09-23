cask "tencent-meeting" do
  if Hardware::CPU.intel?
    version "2.18.3.404,637145a82cf1f9e7e23afada46b8ef98"
    sha256 "0cfaddc50d4d50846ff88b2fd2577bedb932bafc0e3b6a935e13c0e526932d6b"
    url "https://updatecdn.meeting.qq.com/cos/#{version.after_comma}/TencentMeeting_0300000000_#{version.before_comma}.publish.x86_64.dmg",
        verified: "qq.com/"
  else
    version "2.18.3.404,452afb351949d9d831e860320aa2eeef"
    sha256 "93b66146e14d7cba7896c8a49b1d1470f30e36220dbae1cdad6d892be8e82c61"
    url "https://updatecdn.meeting.qq.com/cos/#{version.after_comma}/TencentMeeting_0300000000_#{version.before_comma}.publish.arm64.dmg",
        verified: "qq.com/"
  end

  name "Tencent Meeting"
  name "腾讯会议"
  desc "Cloud video conferencing"
  homepage "https://meeting.tencent.com/"

  livecheck do
    # curl -H 'Content-Type: application/json' \
    #   --data-binary \
    #   '[{"instance":"mac","type":"0300000000"},{"instance":"mac_arm64","type":"0300000000"}]' \
    #   https://meeting.tencent.com/wemeet-webapi/v2/config/query-download-info
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
