cask "wormhole" do
  version "1.4.6"
  sha256 "941e47f428815dea0c973a69cc4abd64e134257560a98ad475e7dbc1988966eb"

  # files.octopusgame.com/ was verified as official when first introduced to the cask
  url "https://files.octopusgame.com/os/WormholeInstaller.dmg"
  appcast "https://er.run/release"
  name "Wormhole"
  homepage "https://er.run/"

  app "Wormhole.app"

  zap trash: "~/Library/Saved Application State/er.Wormhole.savedState"
end
