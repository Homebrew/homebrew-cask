cask "vanilla" do
  version "2.2,61"
  sha256 "249ce3e326fad5f89580803574fbe4229a1c0796b4483e650fc27941c00cfe22"

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
