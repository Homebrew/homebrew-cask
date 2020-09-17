cask "tweetbot" do
  version "3.4.200,4"
  sha256 "b8f7af9cf9d1ace4995fc01ec650ab982afc73645a0f5ca2c84d6777506d2d04"

  # tapbots.net/ was verified as official when first introduced to the cask
  url "https://tapbots.net/tweetbot#{version.after_comma}/Tweetbot.#{version.before_comma.no_dots}.zip"
  appcast "https://tapbots.net/tweetbot#{version.after_comma}/update.plist",
          must_contain: version.before_comma.no_dots
  name "Tweetbot"
  desc "Twitter client"
  homepage "https://tapbots.com/tweetbot/mac/"

  depends_on macos: ">= :high_sierra"

  app "Tweetbot.app"
end
