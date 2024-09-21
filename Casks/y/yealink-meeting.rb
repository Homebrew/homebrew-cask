cask "yealink-meeting" do
  arch arm: "mac-arm", intel: "macos"

  on_arm do
    version "4.7.4,462c9ac10ec504846b522cef6652c130"
    sha256 "94ce6905f6664c23105abcdc568ac2401bac162ee1099f31182ebcfb3d30f7e8"
  end
  on_intel do
    version "4.7.3,c6f70f17095d9156a24979c7ce31fa2c"
    sha256 "16839d9d75958a7460cbf551c753d9d25c780409b96c1a941f18d2fd46a13d83"
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
