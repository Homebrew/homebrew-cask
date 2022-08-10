cask "tencent-meeting" do
  arch arm: "arm64", intel: "x86_64"

  if Hardware::CPU.intel?
    version "3.10.4.445,76dddacec583bb87a2105c0089f24c7b"
    sha256 "f126aa4bee8cb19214a8e41b1e1d7d664be15e7ea0d6e6ebf605dbfb6bb16116"
  else
    version "3.10.4.445,f587a1297117ae13b11cdc906e33312f"
    sha256 "a8d973b16ae42c593389a6b36c5dbca2f23f5a2776ec10b63dc67cec205de457"
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
