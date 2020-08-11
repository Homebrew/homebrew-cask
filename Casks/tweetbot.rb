cask "tweetbot" do
  version "3.4.100,4"
  sha256 "e57b54c79c87d81ce694fd34b511eeeb724f8a9578d04d8034d0805d5143b6a3"

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
