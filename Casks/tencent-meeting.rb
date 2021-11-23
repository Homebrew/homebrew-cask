cask "tencent-meeting" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  if Hardware::CPU.intel?
    version "3.1.2.424,6f8c23ab8c6689027ec29fc164f677ab"
    sha256 "124a13630b166e58a60e5d239ce4ac053ba69a15c62dfb21b10d3947474205ae"
  else
    version "3.1.2.424,279d3942cd1a6d943f40d8c51b471573"
    sha256 "708f0c34beb4f390ded1ce1d2332b6ae587fcdfdc10f659a8d06b9e3cc56a096"
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
