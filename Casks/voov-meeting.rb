cask "voov-meeting" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  if Hardware::CPU.intel?
    version "3.3.2.510,1410000198,255661c36b01c1f58129754358b192ac"
    sha256 "e33c32b2af728c3ac0277156ef75e781fcec48f7191dc93c81669cde9b13dd64"
  else
    version "3.3.2.510,1410000198,4c95e5f9ac1a586edab01d761aa8e0be"
    sha256 "062e9ed7bf86dd64087100b595b3bd2e406ceb0aa5d1cf288513b05424bde783"
  end
  url "https://updatecdn.meeting.qq.com/#{version.csv.third}/VooVMeeting_#{version.csv.second}_#{version.csv.first}.publish.#{arch}.dmg",
      verified: "updatecdn.meeting.qq.com"
  name "VooV Meeting"
  name "Tencent Meeting International Version"
  desc "Cross-border video conferencing software"
  homepage "https://voovmeeting.com/"

  # See https://github.com/Homebrew/homebrew-cask/pull/120458#issuecomment-1068393782
  livecheck do
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
