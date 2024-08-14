cask "yealink-meeting" do
  arch arm: "mac-arm", intel: "macos"

  on_arm do
    version "4.6.30,63c6f7424fad1db08db10b5025dbdb1a"
    sha256 "24d704eac27337e918f87c7453f41c579ed074e33012d2a9dc2010231edf277e"
  end
  on_intel do
    version "4.6.29,3c384d071e92bf569d2c9786295a3560"
    sha256 "40bc847b8d094e5ad4590d93329c55919fc18654d20a075faebabea1fbee45cb"
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
