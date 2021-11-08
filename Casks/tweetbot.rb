cask "tweetbot" do
  version "3.5.5,35500"
  sha256 "7d6d7ad65763bf1f3a12ef35e61cba1885a509d35072073f679a664c2488500b"

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
