cask "wombat" do
  version "0.3.1"
  sha256 "90ac4ced7f772df5c8a49d4d03ce96f83815a118f2423ccea263d1658f82611e"

  url "https://github.com/rogchap/wombat/releases/download/v#{version}/Wombat_v#{version}_Darwin_x86_64.dmg"
  appcast "https://github.com/rogchap/wombat/releases.atom"
  name "Wombat"
  desc "Cross platform gRPC client"
  homepage "https://github.com/rogchap/wombat"

  app "Wombat.app"

  zap trash: "~/Library/Application Support/Wombat"
end
