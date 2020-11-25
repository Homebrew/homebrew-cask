cask "tweetbot" do
  version "3.5.000,4"
  sha256 "f15be2c4afbc2c383394b9c01fb38bf04daa792711a86f9eff26dd137eaa64e8"

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
