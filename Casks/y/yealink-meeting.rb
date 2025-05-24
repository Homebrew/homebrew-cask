cask "yealink-meeting" do
  arch arm: "arm", intel: "X86"

  on_arm do
    version "4.7.28,7a3208b1c44ff3d8ea7cf1264f1a655c"
    sha256 "0e501c1995fa5e6160f957322a19aad6b31bcc53108ba3121963854acbccf844"
  end
  on_intel do
    version "4.7.27,820c32760cc80d14d9e5fcc4526a622a"
    sha256 "68f7d612209b4738680bd5469003328663044462ce491d4627fd8b628b3102cd"
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
