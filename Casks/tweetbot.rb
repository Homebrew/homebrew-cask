cask "tweetbot" do
  version "3.5.300,4"
  sha256 "d7501211b6d8dce67a9061b0a33b66c57b5fcda9ae171b1858a40e31df71afc7"

  url "https://tapbots.net/tweetbot#{version.after_comma}/Tweetbot.#{version.before_comma.no_dots}.zip",
      verified: "tapbots.net/"
  appcast "https://tapbots.net/tweetbot#{version.after_comma}/update.plist",
          must_contain: version.before_comma.no_dots
  name "Tweetbot"
  desc "Twitter client"
  homepage "https://tapbots.com/tweetbot/mac/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Tweetbot.app"

  zap trash: [
    "~/Library/Application Scripts/com.tapbots.Tweetbot#{version.major}Mac",
    "~/Library/Containers/com.tapbots.Tweetbot#{version.major}Mac",
    "~/Library/Group Containers/*.com.tapbots.Tweetbot#{version.major}Mac",
  ]
end
