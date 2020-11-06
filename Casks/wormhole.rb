cask "wormhole" do
  version "1.4.3"
  sha256 "21ba30e4c8d3016ba26b9c01514eddd3d91c1f1c9aec486da10817f1e5abb9c8"

  # files.octopusgame.com/ was verified as official when first introduced to the cask
  url "https://files.octopusgame.com/os/WormholeInstaller.dmg"
  appcast "https://er.run/release"
  name "Wormhole"
  homepage "https://er.run/"

  app "Wormhole.app"

  zap trash: "~/Library/Saved Application State/er.Wormhole.savedState"
end
