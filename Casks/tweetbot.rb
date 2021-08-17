cask "tweetbot" do
  version "3.5.3,35300"
  sha256 "d7501211b6d8dce67a9061b0a33b66c57b5fcda9ae171b1858a40e31df71afc7"

  url "https://tapbots.net/tweetbot4/Tweetbot.#{version.after_comma}.zip",
      verified: "tapbots.net/"
  name "Tweetbot"
  desc "Twitter client"
  homepage "https://tapbots.com/tweetbot/mac/"

  livecheck do
    url "https://tapbots.net/tweetbot4/update.plist"
    strategy :extract_plist do |version|
      "#{version.values.map(&:short_version).compact.first},#{version.values.map(&:version).compact.first}"
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Tweetbot.app"

  zap trash: [
    "~/Library/Application Scripts/com.tapbots.Tweetbot#{version.major}Mac",
    "~/Library/Containers/com.tapbots.Tweetbot#{version.major}Mac",
    "~/Library/Group Containers/*.com.tapbots.Tweetbot#{version.major}Mac",
  ]
end
