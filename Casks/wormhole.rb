cask "wormhole" do
  version "1.4.5"
  sha256 "917fca07756497abb6646aadbbb244573f42fed7c577ad1e8817b30570db4f6f"

  # files.octopusgame.com/ was verified as official when first introduced to the cask
  url "https://files.octopusgame.com/os/WormholeInstaller.dmg"
  appcast "https://er.run/release"
  name "Wormhole"
  homepage "https://er.run/"

  app "Wormhole.app"

  zap trash: "~/Library/Saved Application State/er.Wormhole.savedState"
end
