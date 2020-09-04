cask "wormhole" do
  version "1.3.3"
  sha256 "ab1950b888b95d20f39d1cbaa40790edf4b41cd846972fe10d9134d548ac1900"

  # files.octopusgame.com/ was verified as official when first introduced to the cask
  url "https://files.octopusgame.com/os/WormholeInstaller.dmg"
  appcast "https://er.run/release"
  name "Wormhole"
  homepage "https://er.run/"

  app "Wormhole.app"

  zap trash: "~/Library/Saved Application State/er.Wormhole.savedState"
end
