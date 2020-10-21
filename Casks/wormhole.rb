cask "wormhole" do
  version "1.3.6"
  sha256 "f6d7f6f819c26abfe55af98f353cd1774922798867ab955ba5ec831c07662fcd"

  # files.octopusgame.com/ was verified as official when first introduced to the cask
  url "https://files.octopusgame.com/os/WormholeInstaller.dmg"
  appcast "https://er.run/release"
  name "Wormhole"
  homepage "https://er.run/"

  app "Wormhole.app"

  zap trash: "~/Library/Saved Application State/er.Wormhole.savedState"
end
