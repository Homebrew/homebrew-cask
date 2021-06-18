cask "tencent-meeting" do
  if Hardware::CPU.intel?
    version "2.13.3.435,92f23ee987469917a93ba80eddbee251"
    sha256 "563e4f5871a58b1cf89ba88b8fdd4b4814bb7f719f2e49826ee634870ea5d3be"
    url "https://updatecdn.meeting.qq.com/#{version.after_comma}/TencentMeeting_0300000000_#{version.before_comma}.publish.x86_64.dmg",
        verified: "qq.com/"
  else
    version "2.13.3.435,19289abd97629d65ad8033a6d226c3c0"
    sha256 "41180897931182331f8db8c88fc18e12cb37e225566a11fbd0af3f8ce6fa13f6"
    url "https://updatecdn.meeting.qq.com/#{version.after_comma}/TencentMeeting_0300000000_#{version.before_comma}.publish.arm64.dmg",
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
