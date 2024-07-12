cask "yealink-meeting" do
  version "4.6.26,a8e8023773218a38dbbc96a75392e767"
  sha256 "6f61cec436108723cace15e59c302b730cb7dd1ca9b98556246c8a9463a2dd1f"

  url "https://download.ylyun.com/yealink-meeting/macos/latest/Yealink-Meeting.dmg?v=#{version.csv.second}"
  name "Yealink Meeting"
  desc "Video communication and virtual meeting platform"
  homepage "https://www.ylyun.com/portal/pc/Download"

  livecheck do
    url "https://www.ylyun.com/portal/front/appPackageInfo?type=macos"
    strategy :json do |json|
      "#{json.dig("data", "packageVersion")},#{json.dig("data", "md5")}"
    end
  end

  app "Yealink Meeting.app"

  zap trash: [
    "~/Library/Application Support/Yealink Meeting",
    "~/Library/Application Support/YealinkSdk",
  ]

  caveats do
    requires_rosetta
  end
end
