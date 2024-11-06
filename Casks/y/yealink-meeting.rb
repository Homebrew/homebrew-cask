cask "yealink-meeting" do
  arch arm: "mac-arm", intel: "macos"

  on_arm do
    version "4.7.8,7feccc7213a899e6582c6dad9b99a292"
    sha256 "7ba632d410653df2649d4156f3ad2bb5e313097488e23b5599416e9f98dcb85a"
  end
  on_intel do
    version "4.7.7,af93cde8532e3e484840791594e9e4c8"
    sha256 "0df51bb58fcd0aab8ae191a0520cc426c1c7e3cb4651e62061c596077ef0db18"
  end

  url "https://download.ylyun.com/yealink-meeting/#{arch}/latest/Yealink-Meeting.dmg?v=#{version.csv.second}"
  name "Yealink Meeting"
  desc "Video communication and virtual meeting platform"
  homepage "https://www.ylyun.com/portal/pc/Download"

  livecheck do
    url "https://www.ylyun.com/portal/front/appPackageInfo?type=#{arch}"
    strategy :json do |json|
      "#{json.dig("data", "packageVersion")},#{json.dig("data", "md5")}"
    end
  end

  app "Yealink Meeting.app"

  zap trash: [
    "~/Library/Application Support/Yealink Meeting",
    "~/Library/Application Support/YealinkSdk",
  ]
end
