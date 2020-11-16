cask "vanilla" do
  version "2.0,46"
  sha256 "1ef371f039dd099c13b9caf0b427fcb26fadc5cd52c01f2f5cc12860ee66ecc6"

  url "https://macrelease.matthewpalmer.net/distribution/appcasts/Vanilla-#{version.after_comma}.dmg"
  appcast "https://updates.devmate.com/net.matthewpalmer.Vanilla.xml"
  name "Vanilla"
  desc "Tool to hide menu bar icons"
  homepage "https://matthewpalmer.net/vanilla/"

  depends_on macos: ">= :sierra"

  app "Vanilla.app"
end
