cask "vanilla" do
  version "2.0.3,49"
  sha256 "a33d62b5ddaebb7f5e56ce0dd2407a08b564f0750705b3b809808992283a2d7e"

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
