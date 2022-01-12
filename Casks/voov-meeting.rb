cask "voov-meeting" do
  version "1.7.1.510,1410000198"
  sha256 "7e43ecc30d0eb99ab511bb8709b89d6c3916a5a05b638d1c4980210669ac669a"

  url "https://down.qq.com/download/VooVMeeting_#{version.csv.second}_#{version.csv.first}.publish.dmg",
      verified: "down.qq.com/download/"
  name "VooV Meeting"
  name "Tencent Meeting International Version"
  desc "Cross-border video conferencing software"
  homepage "https://voovmeeting.com/"

  livecheck do
    url "https://voovmeeting.com/download/darwin"
    strategy :header_match do |headers|
      match = headers["location"].match(/_(\d+)_(\d+(?:\.\d+)*)\.publish\.dmg/)
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
