cask "tencent-meeting" do
  arch arm: "arm64", intel: "x86_64"

  on_intel do
    version "3.11.2.475,0ee6cf2c4d40b55915f931f49d707d98"
    sha256 "52167fc16cc5fb82c5cf92d1ebbfeb289deca08fb24404481b89861786ac1398"
  end
  on_arm do
    version "3.11.2.475,27faa394e887215419649c8edd88cf8c"
    sha256 "29391d300deb260c090c5f371100597c1c0daea103c369ee27b4588c1c10318c"
  end

  url "https://updatecdn.meeting.qq.com/cos/#{version.csv.second}/TencentMeeting_0300000000_#{version.csv.first}.publish.#{arch}.dmg",
      verified: "updatecdn.meeting.qq.com/cos/"
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
