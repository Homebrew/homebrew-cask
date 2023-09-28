cask "voov-meeting" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "3.16.4.513,fb2dd60acb011c96104a5205a5e37187"
    sha256 "8fbe6c9653e4218ef10e43d26705bd5c292e4b91c2905e2a0c3d4753d026872f"
  end
  on_intel do
    version "3.16.4.513,a26ccbf81acefeb96ec2d657739932a9"
    sha256 "690ae54739b18a17104d9660fe41cdcc18147b7ee1d62ad1504d0b7f763fa1e7"
  end

  url "https://updatecdn.meeting.qq.com/cos/#{version.csv.second}/VooVMeeting_1410000198_#{version.csv.first}.publish.#{arch}.dmg",
      verified: "updatecdn.meeting.qq.com/cos/"
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

  depends_on macos: ">= :el_capitan"

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
