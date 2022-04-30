cask "tencent-meeting" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  if Hardware::CPU.intel?
    version "3.7.7.457,fdd35976237d4e68357a2d8b38d89053"
    sha256 "db78417d34eb2192305e75dfe77ccebc25cda02f7f650d6537c09ce62690b39a"
  else
    version "3.7.7.457,e4007ce7d26935660458af08bdd4465c"
    sha256 "1f44e9e915491af35aa54fedf98018b6d67ac641074911b5782fd8512b901660"
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
