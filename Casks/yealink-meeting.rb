cask "yealink-meeting" do
  version "4.4.15,77f11a6e19ac93b4f86b5bcfe94b61fa"
  sha256 "e455bb949e2a84b44d982f0f0dc18e7ddfcdfb2003cee5903f6a74b4a56e9937"

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
