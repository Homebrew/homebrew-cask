cask "wormhole" do
  version "1.2.7"
  sha256 "4800194de3fa5dee961fdd9a63ffa1a751a05c5f0db4558bef73b136212fb9c2"

  # files.octopusgame.com/ was verified as official when first introduced to the cask
  url "https://files.octopusgame.com/os/WormholeInstaller.dmg"
  appcast "https://er.run/release"
  name "Wormhole"
  homepage "https://er.run/"

  app "Wormhole.app"

  zap trash: "~/Library/Saved Application State/er.Wormhole.savedState"
end
