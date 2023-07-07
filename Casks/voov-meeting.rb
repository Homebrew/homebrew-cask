cask "voov-meeting" do
  arch arm: "arm64", intel: "x86_64"
  arch_suffix = on_arch_conditional intel: "%20%281%29"

  on_arm do
    version "3.16.3.510,20f9cf0140fac6fdf13694472f4b30e5"
    sha256 "2bc75e79d30bbba88f6cd6c3acf3030a08f11f1be849692a8eebd72f759f2f8c"
  end
  on_intel do
    version "3.16.2.510,11d9b52dbae65c0fdb27d0abed56acf6"
    sha256 "2f00b5edf2914306489fc96b6397d21a9658e3d1a4fcb019b8bdccb75000778c"
  end

  url "https://updatecdn.meeting.qq.com/cos/#{version.csv.second}/VooVMeeting_1410000198_#{version.csv.first}.publish.#{arch}#{arch_suffix}.dmg",
      verified: "updatecdn.meeting.qq.com/"
  name "VooV Meeting"
  name "Tencent Meeting International Version"
  desc "Video conferencing software"
  homepage "https://voovmeeting.com/"

  livecheck do
    url %Q(https://voovmeeting.com/web-service/query-download-info?q=[{"package-type":"app","channel":"1410000198","platform":"mac","arch":"#{arch}","decorators":["intl"]}]&nonce=1234567890123456)
    regex(%r{/cos/(\h+)/VooVMeeting[._-].+?v?(\d+(?:\.\d+)+)})
    strategy :json do |json, regex|
      json["info-list"]&.map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        "#{match[2]},#{match[1]}"
      end
    end
  end

  app "VooV Meeting.app"

  zap trash: [
    "~/Library/Application Support/com.tencent.bugly",
    "~/Library/Application Support/com.tencent.rqd/com.tencent.tencentmeeting",
    "~/Library/Caches/com.tencent.tencentmeeting",
    "~/Library/Containers/com.tencent.tencentmeeting",
    "~/Library/HTTPStorages/com.tencent.tencentmeeting",
    "~/Library/HTTPStorages/com.tencent.tencentmeeting.binarycookies",
    "~/Library/Preferences/com.tencent.tencentmeeting.plist",
    "~/Library/Saved Application State/com.tencent.tencentmeeting.savedState",
    "~/Library/WebKit/com.tencent.tencentmeeting",
  ]
end
