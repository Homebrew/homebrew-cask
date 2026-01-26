cask "voov-meeting" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "3.32.21.510,19ddb56e8200df5f189c29795081a897"
    sha256 "ffed2c02d988275b3486de9be0ced21ff636880ae1de4f474a5273b0ba711d2f"
  end
  on_intel do
    version "3.32.21.510,10d8f710e20aabfca77b90e7997b7e14"
    sha256 "5b023c017fe3bf9d1dbbee8d9edf54330fca61945c0523830b61ed59eae159b4"
  end

  url "https://updatecdn.meeting.qq.com/cos/#{version.csv.second}/VooVMeeting_1410000198_#{version.csv.first}.publish.#{arch}.dmg",
      verified: "updatecdn.meeting.qq.com/cos/"
  name "VooV Meeting"
  name "Tencent Meeting International Version"
  desc "Video conferencing software"
  homepage "https://voovmeeting.com/"

  livecheck do
    url %Q(https://voovmeeting.com/web-service/query-download-info?q=[{"package-type":"app","channel":"1410000198","platform":"mac","arch":"#{arch}","decorators":["intl"]}]&nonce=1234567890123456)
    regex(%r{/cos/(\h+)/VooVMeeting[._-].+?v?(\d+(?:\.\d+)+)}i)
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
