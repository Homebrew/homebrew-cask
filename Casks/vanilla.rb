cask "vanilla" do
  version "2.0.1,47"
  sha256 "69e9c73719e32f0b524b8c4fad99ac6d21a25df426fb8432e1a61c7cd1fc5ab2"

  url "https://macrelease.matthewpalmer.net/distribution/appcasts/Vanilla-#{version.after_comma}.dmg"
  appcast "https://macrelease.matthewpalmer.net/distribution/appcasts/vanilla.xml?beta=false"
  name "Vanilla"
  desc "Tool to hide menu bar icons"
  homepage "https://matthewpalmer.net/vanilla/"

  depends_on macos: ">= :sierra"

  app "Vanilla.app"
end
