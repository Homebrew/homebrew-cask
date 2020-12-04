cask "wormhole" do
  version "1.4.7"
  sha256 "12ec1ff8f70cb828fdc7a91e16103b6b6b974554d670e2b79166dc443283298b"

  # files.octopusgame.com/ was verified as official when first introduced to the cask
  url "https://files.octopusgame.com/os/WormholeInstaller.dmg"
  appcast "https://er.run/release"
  name "Wormhole"
  homepage "https://er.run/"

  app "Wormhole.app"

  zap trash: "~/Library/Saved Application State/er.Wormhole.savedState"
end
