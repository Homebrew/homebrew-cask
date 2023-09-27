cask "vanilla" do
  version "2.1,58"
  sha256 "0d75b380f717d69619467fc5be928e2997649f882a95b0cbb864c4c459074d27"

  url "https://macrelease.matthewpalmer.net/distribution/appcasts/Vanilla-#{version.csv.second}.dmg"
  name "Vanilla"
  desc "Tool to hide menu bar icons"
  homepage "https://matthewpalmer.net/vanilla/"

  livecheck do
    url "https://macrelease.matthewpalmer.net/distribution/appcasts/vanilla.xml?beta=false"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Vanilla.app"

  zap trash: [
    "~/Library/Application Support/Vanilla",
    "~/Library/Preferences/net.matthewpalmer.Vanilla.plist",
  ]
end
