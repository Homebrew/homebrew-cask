cask "wormhole" do
  version "1.3.1"
  sha256 "b599b60128c5766fd520b4c2cefc30cf8529d6bdee3bdc9514948c750c76d683"

  # files.octopusgame.com/ was verified as official when first introduced to the cask
  url "https://files.octopusgame.com/os/WormholeInstaller.dmg"
  appcast "https://er.run/release"
  name "Wormhole"
  homepage "https://er.run/"

  app "Wormhole.app"

  zap trash: "~/Library/Saved Application State/er.Wormhole.savedState"
end
