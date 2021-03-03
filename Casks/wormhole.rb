cask "wormhole" do
  version "1.5.2"
  sha256 :no_check

  url "https://files.octopusgame.com/os/WormholeInstaller.dmg",
      verified: "files.octopusgame.com/"
  appcast "https://er.run/release"
  name "Wormhole"
  desc "Browse & Control phone on PC, Screen Fusion for iOS & Android"
  homepage "https://er.run/"

  app "Wormhole.app"

  zap trash: "~/Library/Saved Application State/er.Wormhole.savedState"
end
