cask "vanilla" do
  version "2.1.1,59"
  sha256 "ed10c5a379e09f4e5b13d978e9ed583dd8b07783745022af458b5abde11fe749"

  url "https://macrelease.matthewpalmer.net/distribution/appcasts/Vanilla-#{version.csv.second}.dmg"
  name "Vanilla"
  desc "Tool to hide menu bar icons"
  homepage "https://matthewpalmer.net/vanilla/"

  livecheck do
    url "https://macrelease.matthewpalmer.net/distribution/appcasts/vanilla.xml?beta=false"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Vanilla.app"

  zap trash: [
    "~/Library/Application Support/Vanilla",
    "~/Library/Preferences/net.matthewpalmer.Vanilla.plist",
  ]
end
