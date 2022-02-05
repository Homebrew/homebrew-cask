cask "tencent-meeting" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  if Hardware::CPU.intel?
    version "3.4.3.478,359b6c1a219330c1de533bcc5c24af88"
    sha256 "a800404bf5d1091e0c0d5ec0d3820418c206cb8cd2346091673fc85d222d7217"
  else
    version "3.4.3.478,c9e166f3ca61ea7c4ebb36c2430b320c"
    sha256 "f607edebba03a4722b70afaca3daa90ab998f9e3450196778a59aa8284128d5c"
  end

  url "https://updatecdn.meeting.qq.com/cos/#{version.csv.second}/TencentMeeting_0300000000_#{version.csv.first}.publish.#{arch}.dmg",
      verified: "updatecdn.meeting.qq.com/cos/"
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
