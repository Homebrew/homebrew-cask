cask "tencent-meeting" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "3.16.6.417,1ec38b0c73c3ffdc459b0f19f3aa486c"
    sha256 "42fe14f30a7a869a6387383016a97b73c9316117ebd39a97fe80f4acc958994e"
  end
  on_intel do
    version "3.16.4.433,53ef1bbf1c22ef170055358a46e49b70"
    sha256 "2b8700b442ac50847a526e23925c213387b54937df7b48aff18264d617abe5d7"
  end

  url "https://updatecdn.meeting.qq.com/cos/#{version.csv.second}/TencentMeeting_0300000000_#{version.csv.first}.publish.#{arch}.officialwebsite.dmg",
      verified: "updatecdn.meeting.qq.com/cos/"
  name "Tencent Meeting"
  name "腾讯会议"
  desc "Cloud video conferencing"
  homepage "https://meeting.tencent.com/"

  livecheck do
    url %Q(https://meeting.tencent.com/web-service/query-download-info?q=[{"package-type":"app","channel":"0300000000","platform":"mac","arch":"#{arch}"}]&nonce=0000000000000000)
    regex(%r{/cos/(\h+)/TencentMeeting[._-].+?v?(\d+(?:\.\d+)+)})
    strategy :json do |json, regex|
      json["info-list"]&.map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        "#{match[2]},#{match[1]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "TencentMeeting.app"

  uninstall quit: "com.tencent.meeting"

  zap trash: [
    "~/Library/Application Scripts/FN2V63AD2J.com.tencent.meeting",
    "~/Library/Application Scripts/com.tencent.meeting",
    "~/Library/Caches/com.tencent.meeting",
    "~/Library/Containers/com.tencent.meeting",
    "~/Library/Containers/com.tencent.wemeet.FileDelta",
    "~/Library/Group Containers/FN2V63AD2J.com.tencent.meeting",
    "~/Library/HTTPStorages/com.tencent.meeting",
    "~/Library/HTTPStorages/com.tencent.meeting.binarycookies",
    "~/Library/Preferences/com.tencent.meeting.plist",
    "~/Library/Saved Application State/com.tencent.meeting.savedState",
    "~/Library/WebKit/com.tencent.meeting",
  ]
end
