cask "yealink-meeting" do
  arch arm: "mac-arm", intel: "macos"

  on_arm do
    version "4.6.36,eab07635e75bf71ddaa16b3b667d92a4"
    sha256 "23688039647383f4dd8aba452723b96a5c100dca9e46d6062a5dfba87504d1ba"
  end
  on_intel do
    version "4.6.35,04415fff0a2281875fefc6cf952e1b93"
    sha256 "88c6479547973677b610fa2a9c2b707194d088480de2454c600aeff2e3ebcc7e"
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
