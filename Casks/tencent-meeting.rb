cask "tencent-meeting" do
  arch arm: "arm64", intel: "x86_64"

  on_intel do
    version "3.13.3.431,4eb2e52332a2e1e840b34c28735b83b5"
    sha256 "eebbf06173efe9c32094b5f83a19b842b79d0eb77087649010edf52c212b0434"
  end
  on_arm do
    version "3.13.3.431,6658a2e92ca986ce0f5e1c77dca6324f"
    sha256 "fd7d9334224a5672db5750657d57d2c88557a4b63a5a498f4977d1eacba8e451"
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
