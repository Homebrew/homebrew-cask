cask "tencent-meeting" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  if Hardware::CPU.intel?
    version "3.2.5.400,01ff15355e63dd15e3fe39959e0a8269"
    sha256 "01cf2082444c8821d784d1ac06e1ed00b5a69812a3bffd24f0acb10671dad040"
  else
    version "3.2.5.400,5d5b89f98a5a1e55f405f104ed5530d2"
    sha256 "9f3fd575e9de3d47ff12b9a1eade35de55813a16581d2e5a92b709a8ab53e513"
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
