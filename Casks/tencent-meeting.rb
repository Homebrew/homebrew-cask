cask "tencent-meeting" do
  arch arm: "arm64", intel: "x86_64"

  on_intel do
    version "3.11.6.400,617ef62c8bf4be2084b1c3d06bb6a358"
    sha256 "7565d0c2f8cd4c7aeefc4fd4e623053fb224d33db34cb1bc57f616d1f5c021f4"
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
