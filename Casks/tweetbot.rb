cask "tweetbot" do
  version "3.4.000,4"
  sha256 "9016c4a6727fd0c860092b56ffd9e6481cd35e056188099352eaa1ce213ab0e6"

  # tapbots.net/ was verified as official when first introduced to the cask
  url "https://tapbots.net/tweetbot#{version.after_comma}/Tweetbot.#{version.before_comma.no_dots}.zip"
  appcast "https://tapbots.net/tweetbot#{version.after_comma}/update.plist",
          must_contain: version.before_comma.no_dots
  name "Tweetbot"
  homepage "https://tapbots.com/tweetbot/mac/"

  depends_on macos: ">= :high_sierra"

  app "Tweetbot.app"
end
