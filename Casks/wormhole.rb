cask "wormhole" do
  version "1.4.2"
  sha256 "bac62a6d7bbd24ff496851111bf50409c2798212ceddd134979e62c6bf459e13"

  # files.octopusgame.com/ was verified as official when first introduced to the cask
  url "https://files.octopusgame.com/os/WormholeInstaller.dmg"
  appcast "https://er.run/release"
  name "Wormhole"
  homepage "https://er.run/"

  app "Wormhole.app"

  zap trash: "~/Library/Saved Application State/er.Wormhole.savedState"
end
