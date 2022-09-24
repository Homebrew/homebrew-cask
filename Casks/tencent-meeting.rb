cask "tencent-meeting" do
  arch arm: "arm64", intel: "x86_64"

  on_intel do
    version "3.11.5.437,33ec898d46f9a28983a813e7de83fe58"
    sha256 "efb26ef06367709f437ad819fe97d47ef2ebec0f7d03c7acf5b75c180ebd41a0"
  end
  on_arm do
    version "3.11.5.437,994db52ca836f6ea059eb65d355f8712"
    sha256 "3fcecfc618cdd295173115f419e52b483f3797fbb85d387a4309c2457ddb4ba7"
  end

  url "https://updatecdn.meeting.qq.com/cos/#{version.csv.second}/TencentMeeting_0300000000_#{version.csv.first}.publish.#{arch}.dmg",
      verified: "updatecdn.meeting.qq.com/cos/"
  name "Tencent Meeting"
  name "腾讯会议"
  desc "Cloud video conferencing"
  homepage "https://meeting.tencent.com/"

  livecheck do
    skip "No version information available"
  end

  auto_updates true

  app "TencentMeeting.app"

  zap trash: [
    "~/Library/Caches/com.tencent.meeting",
    "~/Library/Containers/com.tencent.meeting",
    "~/Library/Preferences/com.tencent.meeting.plist",
  ]
end
