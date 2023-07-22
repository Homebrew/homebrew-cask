cask "tencent-meeting" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "3.18.5.455,5998fff518fdeff44fc7b8f1936e9582"
    sha256 "fc2ededbfd1addd4e3c1aa64a440b30b8a036f33cf5bf6083fbe64c53c316ad7"
  end
  on_intel do
    version "3.18.5.455,928a3af13bb2497bfa63bfc129835eda"
    sha256 "2647c3eee7799e2d310fcca62a4b8f86e846c110d4aac8a84f79e9b73a1731c1"
  end

  url "https://updatecdn.meeting.qq.com/cos/#{version.csv.second}/TencentMeeting_0300000000_#{version.csv.first}.publish.#{arch}.dmg",
      verified: "updatecdn.meeting.qq.com/cos/"
  name "Tencent Meeting"
  name "腾讯会议"
  desc "Cloud video conferencing"
  homepage "https://meeting.tencent.com/"

  livecheck do
    url "https://meeting.tencent.com/web-service/query-app-update-info/?from=2&app_publish_channel=TencentInside&sdk_id=0300000000&os=mac&arch=#{arch}&appver=#{version.csv.first}"
    regex(%r{/cos/(\h+)/TencentMeeting[._-].+?v?(\d+(?:\.\d+)+)})
    strategy :json do |json, regex|
      match = json.dig("target", "url")&.match(regex)
      next version if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "TencentMeeting.app"

  uninstall quit: "com.tencent.meeting"

  zap trash: [
    "~/Library/Application Scripts/FN2V63AD2J.com.tencent.meeting",
    "~/Library/Application Scripts/com.tencent.meeting",
    "~/Library/Caches/com.tencent.meeting*",
    "~/Library/Containers/com.tencent.meeting*",
    "~/Library/Containers/com.tencent.wemeet.FileDelta",
    "~/Library/Group Containers/FN2V63AD2J.com.tencent.meeting",
    "~/Library/HTTPStorages/com.tencent.meeting*",
    "~/Library/Preferences/com.tencent.meeting*.plist",
    "~/Library/Saved Application State/com.tencent.meeting.savedState",
    "~/Library/WebKit/com.tencent.meeting",
  ]
end
