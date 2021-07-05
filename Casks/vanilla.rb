cask "vanilla" do
  version "2.0.2,48"
  sha256 "0d9190844431871fb8306f0d2d5289f7a1e89c095a55f4304efb32a0332d2f83"

  url "https://macrelease.matthewpalmer.net/distribution/appcasts/Vanilla-#{version.after_comma}.dmg"
  name "Vanilla"
  desc "Tool to hide menu bar icons"
  homepage "https://matthewpalmer.net/vanilla/"

  livecheck do
    url "https://macrelease.matthewpalmer.net/distribution/appcasts/vanilla.xml?beta=false"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Vanilla.app"

  zap trash: [
    "~/Library/Application Support/Vanilla",
    "~/Library/Preferences/net.matthewpalmer.Vanilla.plist",
  ]
end
