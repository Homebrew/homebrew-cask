cask "tencent-meeting" do
  arch arm: "arm64", intel: "x86_64"

  on_intel do
    version "3.13.4.426,a9b2640f51c6659580cffec83520d591"
    sha256 "28bf0de4840fa1d3853ad073d67a5f525246dc456c5ad74fa2a9ee26e8e29c28"
  end
  on_arm do
    version "3.13.4.426,2c72e3dca5c9cb81ff5854a3b8e26ee5"
    sha256 "618bbdda49693aee4589fb1d06ab7330a977f90bcb5f0b09373af5463184fc51"
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
