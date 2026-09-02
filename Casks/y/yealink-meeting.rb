cask "yealink-meeting" do
  arch arm: "arm", intel: "X86"

  on_arm do
    version "4.7.43,03989b48eb2ca4178a3aa1e3c9dc0ec3"
    sha256 "7f4e3cd07540cc36b77a28c26ea54a0c382e77ac800274cc37d90584161a0cb6"
  end
  on_intel do
    version "4.7.42,b655b57e9b9b15c70dca10ad4085a2f0"
    sha256 "347edf084f8f22e4d96c5785bb1e924328ead2f376be366338c05f69c97566ce"
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

  depends_on :macos

  app "Yealink Meeting.app"

  zap trash: [
    "~/Library/Application Support/Yealink Meeting",
    "~/Library/Application Support/YealinkSdk",
  ]
end
