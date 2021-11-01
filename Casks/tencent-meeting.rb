cask "tencent-meeting" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  if Hardware::CPU.intel?
    version "2.20.2.413,183b7606483d26619c88faab648e09e3"
    sha256 "e3cbf89201e7397ee786a69dec4f3b028e6e796e949c1e43193dea98d694c5fa"
  else
    version "2.20.2.413,3d0373e8a5c07cfa3e7fc35b4aa09acf"
    sha256 "56fcb79e2f9ef02139671265c584bcad1cc2a4d17ef9f75ee00ca1683e6014c8"
  end

  url "https://updatecdn.meeting.qq.com/cos/#{version.after_comma}/TencentMeeting_0300000000_#{version.before_comma}.publish.#{arch}.dmg",
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
