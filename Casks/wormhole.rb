cask "wormhole" do
  version "1.4.4"
  sha256 "e02d70586dc67e48daa4b4f912ca32662f2d96f85b3eb40ce0eb26f3dcc1dac4"

  # files.octopusgame.com/ was verified as official when first introduced to the cask
  url "https://files.octopusgame.com/os/WormholeInstaller.dmg"
  appcast "https://er.run/release"
  name "Wormhole"
  homepage "https://er.run/"

  app "Wormhole.app"

  zap trash: "~/Library/Saved Application State/er.Wormhole.savedState"
end
