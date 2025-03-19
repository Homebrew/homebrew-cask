cask "yealink-meeting" do
  arch arm: "arm", intel: "X86"

  on_arm do
    version "4.7.18,f6b034fd6912a167c1a8bc8c0c593a73"
    sha256 "10ffd60bad6e46c6f1a90c99f171ea383ffa8ed3f169db04a1ab8f58a5dbbd8a"
  end
  on_intel do
    version "4.7.17,ab48cee0412bfb67dafd86dff1027320"
    sha256 "e5165d4ab3857a06e01c38882a4d3f7b9f96cbe154e4ed71d31d2f8eb91c88ea"
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
