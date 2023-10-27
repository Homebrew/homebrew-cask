cask "yealink-meeting" do
  version "4.5.17,665cf6adfb297cff1c5c15182db43f07"
  sha256 "c78856a66fa042979035cc679c680aab86a7c491c3157f9de5776789f8e9a50c"

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
