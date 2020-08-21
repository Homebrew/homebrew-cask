cask "wormhole" do
  version "1.3.0"
  sha256 "5bf7bf2f1ab4e63ef757b3367fa00bb1835af2b300eec4870f7bb7119d95238c"

  # files.octopusgame.com/ was verified as official when first introduced to the cask
  url "https://files.octopusgame.com/os/WormholeInstaller.dmg"
  appcast "https://er.run/release"
  name "Wormhole"
  homepage "https://er.run/"

  app "Wormhole.app"

  zap trash: "~/Library/Saved Application State/er.Wormhole.savedState"
end
