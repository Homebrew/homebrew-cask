cask "wormhole" do
  version "1.3.5"
  sha256 "7bab2dd19311c9ba2d38d26209e26db4fb74aedff46a421f5e85250f042de847"

  # files.octopusgame.com/ was verified as official when first introduced to the cask
  url "https://files.octopusgame.com/os/WormholeInstaller.dmg"
  appcast "https://er.run/release"
  name "Wormhole"
  homepage "https://er.run/"

  app "Wormhole.app"

  zap trash: "~/Library/Saved Application State/er.Wormhole.savedState"
end
