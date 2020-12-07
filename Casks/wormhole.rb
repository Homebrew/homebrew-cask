cask "wormhole" do
  version "1.4.8"
  sha256 "d6794b369c2c8912182f59863f910232649a7c42354251d644e7dc763597ecb5"

  # files.octopusgame.com/ was verified as official when first introduced to the cask
  url "https://files.octopusgame.com/os/WormholeInstaller.dmg"
  appcast "https://er.run/release"
  name "Wormhole"
  homepage "https://er.run/"

  app "Wormhole.app"

  zap trash: "~/Library/Saved Application State/er.Wormhole.savedState"
end
