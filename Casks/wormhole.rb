cask "wormhole" do
  version "1.5.9"
  sha256 :no_check

  url "https://files.octopusgame.com/os/WormholeInstaller.dmg",
      verified: "files.octopusgame.com/"
  name "Wormhole"
  desc "Browse & Control phone on PC, Screen Fusion for iOS & Android"
  homepage "https://er.run/"

  livecheck do
    url "https://er.run/release"
    regex(/<div[^>]*class=["']?version[^>]*>\s*<div[^>]*>\s*v?(\d+(?:\.\d+)+)\s*</i)
  end

  app "Wormhole.app"

  zap trash: "~/Library/Saved Application State/er.Wormhole.savedState"
end
