cask "yealink-meeting" do
  arch arm: "arm", intel: "X86"

  on_arm do
    version "4.7.16,9b3368dc5504d4943e16155fff9e7c37"
    sha256 "2251e74f719faed39b665eccd1d9562bf69d32ea25685798738da823a9f7955e"
  end
  on_intel do
    version "4.7.15,016060b52af728e94d8bffb2d6208958"
    sha256 "e3f5ff2f0958dfd6ff5bb3dca5fd6b0adb65d45bf42fb111e09e335c1cecfc1e"
  end

  url "https://download.ylyun.com/yealink-meeting/mac-#{arch}/latest/Yealink-Meeting-#{arch}.dmg?v=#{version.csv.second}"
  name "Yealink Meeting"
  desc "Video communication and virtual meeting platform"
  homepage "https://www.ylyun.com/portal/pc/Download"

  livecheck do
    url "https://www.ylyun.com/portal/front/appPackageInfo?type=mac-#{arch}"
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
