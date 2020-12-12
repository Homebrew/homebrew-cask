cask "voov-meeting" do
  version "1.7.1.510,1410000198"
  sha256 "7e43ecc30d0eb99ab511bb8709b89d6c3916a5a05b638d1c4980210669ac669a"

  # down.qq.com/download/ was verified as official when first introduced to the cask
  url "https://down.qq.com/download/VooVMeeting_#{version.after_comma}_#{version.before_comma}.publish.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://voovmeeting.com/download/darwin"
  name "VooV Meeting"
  name "Tencent Meeting International Version"
  desc "Cross-border video conferencing software"
  homepage "https://voovmeeting.com/"

  app "VooV Meeting.app"

  zap trash: [
    "~/Library/Containers/com.tencent.tencentmeeting",
    "~/Library/Preferences/com.tencent.tencentmeeting.plist",
    "~/Library/Saved Application State/com.tencent.tencentmeeting.savedState",
    "~/Library/WebKit/com.tencent.tencentmeeting",
    "~/Library/Application Support/com.tencent.rqd/com.tencent.tencentmeeting",
  ]
end
