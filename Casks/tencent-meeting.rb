cask "tencent-meeting" do
  arch arm: "arm64", intel: "x86_64"

  on_intel do
    version "3.12.7.434,5c17d5591d2bf914120d01b6aab55ff1"
    sha256 "a833e6f9935fff78e5c342f13a66a0f69c6537ddf944ccb3e9f292ee5ace1e96"
  end
  on_arm do
    version "3.11.6.400,0588ebc3ac89a7e51dee93bbfe57d663"
    sha256 "dbcd5b96f5762a5dc86d9b2618a54677d7092d3ecaf99ee4665553d2d94b7d48"
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
