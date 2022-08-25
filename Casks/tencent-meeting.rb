cask "tencent-meeting" do
  arch arm: "arm64", intel: "x86_64"

  version "3.10.7.413"

  on_intel do
    ver "2012f9451007318aea154d31ae6ff91c"
    sha256 "197fef8145de764344740c66ee438bbddaf95f8d3ee9fbd7ee90fc303281ec8c"
  end
  on_arm do
    ver "f543792179e0b5f5696974a5939435bc"
    sha256 "678d9918cbda90948900c56d57e10e378e92ec78b2687e8f75c0791f20f478a3"
  end

  url "https://updatecdn.meeting.qq.com/cos/#{ver}/TencentMeeting_0300000000_#{version}.publish.#{arch}.dmg",
      verified: "updatecdn.meeting.qq.com/cos/"
  name "Tencent Meeting"
  name "腾讯会议"
  desc "Cloud video conferencing"
  homepage "https://meeting.tencent.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true

  app "TencentMeeting.app"

  zap trash: [
    "~/Library/Caches/com.tencent.meeting",
    "~/Library/Containers/com.tencent.meeting",
    "~/Library/Preferences/com.tencent.meeting.plist",
  ]
end
