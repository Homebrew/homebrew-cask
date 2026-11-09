cask "vanilla" do
  version "3.0,82"
  sha256 "434476180b9aa276749844401f42a9d8348cae9161d8759d273229a8250e99ec"

  url "https://macrelease.matthewpalmer.net/distribution/appcasts/Vanilla-#{version.csv.second}.dmg"
  name "Vanilla"
  desc "Tool to hide menu bar icons"
  homepage "https://matthewpalmer.net/vanilla/"

  livecheck do
    url "https://macrelease.matthewpalmer.net/distribution/appcasts/vanilla.xml?beta=false"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :monterey

  app "Vanilla.app"

  zap trash: [
    "~/Library/Application Support/Vanilla",
    "~/Library/Preferences/net.matthewpalmer.Vanilla.plist",
  ]
end
