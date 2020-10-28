cask "wormhole" do
  version "1.4.0"
  sha256 "73c91fe2c27aba50cfba54c5029552006072836a0b7db490af86b3faca3345b7"

  # files.octopusgame.com/ was verified as official when first introduced to the cask
  url "https://files.octopusgame.com/os/WormholeInstaller.dmg"
  appcast "https://er.run/release"
  name "Wormhole"
  homepage "https://er.run/"

  app "Wormhole.app"

  zap trash: "~/Library/Saved Application State/er.Wormhole.savedState"
end
