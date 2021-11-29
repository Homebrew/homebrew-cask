cask "tencent-meeting" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  if Hardware::CPU.intel?
    version "3.1.3.402,1be5df14f7492143fc9be6286ea6b370"
    sha256 "24b901a9259e3d89b68c5bcb8b933eb36715710f69dafbfdb9a7d4fda964e3c8"
  else
    version "3.1.3.402,67ab0f14b69dcd29958021b790d390ca"
    sha256 "2226c5b370b434da5d04407a390d474e3779178ed3c32bd81488cc85dd891680"
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
