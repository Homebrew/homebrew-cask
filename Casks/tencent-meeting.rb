cask "tencent-meeting" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  if Hardware::CPU.intel?
    version "3.9.3.419,4303ae29b4bb0869370afcdf08133fa7"
    sha256 "87b5f84108d151db744535373c33aaeec26475673e91a319497876c1d064e3d4"
  else
    version "3.9.3.419,8ccf38f77d8c982483764091a9b55d69"
    sha256 "3a31978301813296d3cd265fc91463bd290a94e3d5f4e0cf8e25c7607992c70b"
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
