cask "wormhole" do
  version "1.4.1"
  sha256 "40624de6d06165d5a5ae09d3f7c0bc2d7da0e768fe3af1195bd3361073e7ead0"

  # files.octopusgame.com/ was verified as official when first introduced to the cask
  url "https://files.octopusgame.com/os/WormholeInstaller.dmg"
  appcast "https://er.run/release"
  name "Wormhole"
  homepage "https://er.run/"

  app "Wormhole.app"

  zap trash: "~/Library/Saved Application State/er.Wormhole.savedState"
end
