cask "wormhole" do
  version "1.3.2"
  sha256 "bec3d04e41d0c6eb33a27ec8e920ab0a6b42249bb7fc5b4c8124f822d294220e"

  # files.octopusgame.com/ was verified as official when first introduced to the cask
  url "https://files.octopusgame.com/os/WormholeInstaller.dmg"
  appcast "https://er.run/release"
  name "Wormhole"
  homepage "https://er.run/"

  app "Wormhole.app"

  zap trash: "~/Library/Saved Application State/er.Wormhole.savedState"
end
