cask "tencent-meeting" do
  if Hardware::CPU.intel?
    version "2.16.2.420,b4acf9b3b84361f9c0e51937f23bbde5"
    sha256 "c97533d1cff73ec29977c682ad2708b34319f21c5595f27e9b0db12d967bebcf"
    url "https://updatecdn.meeting.qq.com/#{version.after_comma}/TencentMeeting_0300000000_#{version.before_comma}.publish.x86_64.dmg",
        verified: "qq.com/"
  else
    version "2.15.3.400,6511c21f2ffa0b6c3c6521ca681a2f38"
    sha256 "aa648bcc734deef2e6699e565439a6c3529574ac8e5f76c0d4113b91581d99ee"
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
