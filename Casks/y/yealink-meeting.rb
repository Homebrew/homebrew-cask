cask "yealink-meeting" do
  version "4.6.7,c366f3a18833dde7d21a8f1a8c09b746"
  sha256 "5009e0b49556f5bf1b5bdc8dd3375db6ea1d6e31df06493311f7b4d9f6637de2"

  url "https://download.ylyun.com/yealink-meeting/macos/latest/Yealink-Meeting.dmg?v=#{version.csv.second}"
  name "Yealink Meeting"
  desc "Video communication and virtual meeting platform"
  homepage "https://www.ylyun.com/portal/pc/Download"

  livecheck do
    url "https://www.ylyun.com/portal/front/appPackageInfo?type=macos"
    strategy :json do |json|
      "#{json["data"]["packageVersion"]},#{json["data"]["md5"]}"
    end
  end

  app "Yealink Meeting.app"

  zap trash: [
    "~/Library/Application Support/Yealink Meeting",
    "~/Library/Application Support/YealinkSdk",
  ]
end
