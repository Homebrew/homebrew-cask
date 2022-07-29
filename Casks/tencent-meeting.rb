cask "tencent-meeting" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  if Hardware::CPU.intel?
    version "3.9.8.417,8dd69ebe8a5279c6b2ee3ef83c9b60e3"
    sha256 "3c25b610ea52ea3f6018cb4651ef13cd33099f6e36948d55401f96b02440cbe0"
  else
    version "3.9.8.417,50e9ef9697ae530f093834375ed18645"
    sha256 "79ff7be892001b96f3c30074c45ff4888c711b752faca87db14df2c5896e150b"
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
