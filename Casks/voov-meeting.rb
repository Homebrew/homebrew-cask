cask "voov-meeting" do
  arch arm: "arm64", intel: "x86_64"
  arch_suffix = on_arch_conditional intel: "%20%281%29"

  on_arm do
    version "3.13.7.511,68d2bdd5c3803cc46a569707e9b57b1f"
    sha256 "dbb3838b8169ec0962e3ec56fe01d59d30b179403d0b77e72ed13725334a144c"
  end
  on_intel do
    version "3.13.7.511,6a26914b3c7ed17dcaedcc5f5d7635df"
    sha256 "b551cfd6414870635222c99fbc1baad618f411b879f209552d51f46c7effe03c"
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
