cask "voov-meeting" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  if Hardware::CPU.intel?
    version "3.3.4.510,1410000198,ba15ec11a1077e12ee1bd957a8de8792"
    sha256 "cf6e629ee08667702ab725783682099ccef14f0546be3f66cd58d713979474ef"
  else
    version "3.3.4.510,1410000198,9fe93ee38c6f34bccd832dccb22e5dcf"
    sha256 "78fd96217f46a8fd64991ed953f6b13274d7e76b2314217744703caf55c83f36"
  end

  url "https://updatecdn.meeting.qq.com/#{version.csv.third}/VooVMeeting_#{version.csv.second}_#{version.csv.first}.publish.#{arch}.dmg",
      verified: "updatecdn.meeting.qq.com"
  name "VooV Meeting"
  name "Tencent Meeting International Version"
  desc "Cross-border video conferencing software"
  homepage "https://voovmeeting.com/"

  # See https://github.com/Homebrew/homebrew-cask/pull/120458#issuecomment-1068393782
  livecheck do
    skip "Only works with POST request"
  end

  app "VooV Meeting.app"

  zap trash: [
    "~/Library/Containers/com.tencent.tencentmeeting",
    "~/Library/Preferences/com.tencent.tencentmeeting.plist",
    "~/Library/Saved Application State/com.tencent.tencentmeeting.savedState",
    "~/Library/WebKit/com.tencent.tencentmeeting",
    "~/Library/Application Support/com.tencent.rqd/com.tencent.tencentmeeting",
  ]
end
