cask "wormhole" do
  version "1.3.4"
  sha256 "12a332388ccc7fc9e8785e9094b7d0388492dd52fe9fa317de413a27a35f5c5e"

  # files.octopusgame.com/ was verified as official when first introduced to the cask
  url "https://files.octopusgame.com/os/WormholeInstaller.dmg"
  appcast "https://er.run/release"
  name "Wormhole"
  homepage "https://er.run/"

  app "Wormhole.app"

  zap trash: "~/Library/Saved Application State/er.Wormhole.savedState"
end
