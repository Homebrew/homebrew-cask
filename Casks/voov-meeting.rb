cask "voov-meeting" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"
  postarch = Hardware::CPU.intel? ? "mac" : "mac_arm64"

  if Hardware::CPU.intel?
    version "3.7.0.590,be624b69a9db9410195acc9ec0686885"
    sha256 "be5016805e02e668111d70ea84109cc5b2388cfd72f5236239ace4e8bc1ab1aa"
  else
    version "3.3.4.510,9fe93ee38c6f34bccd832dccb22e5dcf"
    sha256 "78fd96217f46a8fd64991ed953f6b13274d7e76b2314217744703caf55c83f36"
  end

  url "https://updatecdn.meeting.qq.com/#{version.csv.second}/VooVMeeting_1410000198_#{version.csv.first}.publish.#{arch}.dmg",
      verified: "updatecdn.meeting.qq.com"
  name "VooV Meeting"
  name "Tencent Meeting International Version"
  desc "Cross-border video conferencing software"
  homepage "https://voovmeeting.com/"

  # See https://github.com/Homebrew/homebrew-cask/pull/120458#issuecomment-1068393782
  livecheck do
    url "https://bonjour.swoosh.run/post/https:voovmeeting.com/wemeet-webapi/v2/config/query-download-info?[{\"instance\":\"#{postarch}\",\"type\":\"1410000198\"}]"
    strategy :page_match do |page|
      match = page.match(/.*md5":"(.*?)".*version":"(.*?)"/i)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
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
