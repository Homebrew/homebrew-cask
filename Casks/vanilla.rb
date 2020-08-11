cask "vanilla" do
  version "1.2.2,40"
  sha256 "6ed84c99dde08aa95ddc4cf4e68d5091a70212fc817b216f7793ece767e9c751"

  url "https://macrelease.matthewpalmer.net/distribution/appcasts/Vanilla-#{version.after_comma}.dmg"
  appcast "https://updates.devmate.com/net.matthewpalmer.Vanilla.xml"
  name "Vanilla"
  desc "Tool to hide menu bar icons"
  homepage "https://matthewpalmer.net/vanilla/"

  depends_on macos: ">= :sierra"

  app "Vanilla.app"
end
