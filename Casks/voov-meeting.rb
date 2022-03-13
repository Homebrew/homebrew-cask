cask "voov-meeting" do
  version "3.3.0.520,1410000198"
  sha256 :no_check

  if Hardware::CPU.intel?
    url "https://updatecdn.meeting.qq.com/e3a8df8a8f31495d20d4dea1ad978336/VooVMeeting_#{version.csv.second}_#{version.csv.first}.publish.x86_64.dmg",
        verified: "updatecdn.meeting.qq.com"
  else
    url "https://updatecdn.meeting.qq.com/e187c2b2db4619068591b905c134362d/VooVMeeting_#{version.csv.second}_#{version.csv.first}.publish.arm64.dmg",
        verified: "updatecdn.meeting.qq.com"
  end

  name "VooV Meeting"
  name "Tencent Meeting International Version"
  desc "Cross-border video conferencing software"
  homepage "https://voovmeeting.com/"

  livecheck do
    # instance = Hardware::CPU.intel? ? "mac" : "mac_arm64"
    #
    # curl \
    #   'https://voovmeeting.com/wemeet-webapi/v2/config/query-download-info'\
    #   --data-raw
    #   '[{"instance":"mac_arm64","type":"1410000198"}]'
    skip "only works with POST request"
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