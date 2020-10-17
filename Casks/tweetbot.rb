cask "tweetbot" do
  version "3.4.300,4"
  sha256 "3c4baf3e7166cfea474f6100fd663fa8d2a54074ea7fe8701a8c2bd7200cb5cd"

  # tapbots.net/ was verified as official when first introduced to the cask
  url "https://tapbots.net/tweetbot#{version.after_comma}/Tweetbot.#{version.before_comma.no_dots}.zip"
  appcast "https://tapbots.net/tweetbot#{version.after_comma}/update.plist",
          must_contain: version.before_comma.no_dots
  name "Tweetbot"
  desc "Twitter client"
  homepage "https://tapbots.com/tweetbot/mac/"

  depends_on macos: ">= :high_sierra"

  app "Tweetbot.app"

  zap trash: [
    "~/Library/Application Scripts/com.tapbots.Tweetbot#{version.major}Mac",
    "~/Library/Containers/com.tapbots.Tweetbot#{version.major}Mac",
    "~/Library/Group Containers/*.com.tapbots.Tweetbot#{version.major}Mac",
  ]
end
