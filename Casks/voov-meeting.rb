cask "voov-meeting" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  if Hardware::CPU.intel?
    version "3.7.0.590,be624b69a9db9410195acc9ec0686885"
    sha256 "be5016805e02e668111d70ea84109cc5b2388cfd72f5236239ace4e8bc1ab1aa"
  else
    version "3.7.0.590,747ce62c8d3c838f84873c8570b5e9eb"
    sha256 "6eb5c1984d991d361ba77d79ce741f1a0151c66d5918e415749cf4a2cb325d86"
  end

  url "https://updatecdn.meeting.qq.com/#{version.csv.second}/VooVMeeting_1410000198_#{version.csv.first}.publish.#{arch}.dmg",
      verified: "updatecdn.meeting.qq.com"
  name "VooV Meeting"
  name "Tencent Meeting International Version"
  desc "Cross-border video conferencing software"
  homepage "https://voovmeeting.com/"

  # See https://github.com/Homebrew/homebrew-cask/pull/120458#issuecomment-1068393782
  livecheck do
    skip "Requires POST request to retrieve version"
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
