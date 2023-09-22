cask "yealink-meeting" do
  version "4.5.12,824a48de5648fde92ad94bf7c75c4d4e"
  sha256 "2233402080dc779b23dd213697c3061de8151a48b255e4e9c8770a2aa811f955"

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
