cask "wombat" do
  version "0.2.2"
  sha256 "b48b1c101bfe1089c9d553ec82994c56c176f3cbf206ef397b2e2f7c4aaf5dda"

  url "https://github.com/rogchap/wombat/releases/download/v#{version}/Wombat_v#{version}_Darwin_x86_64.dmg"
  appcast "https://github.com/rogchap/wombat/releases.atom"
  name "Wombat"
  desc "Cross platform gRPC client"
  homepage "https://github.com/rogchap/wombat"

  app "Wombat.app"
end
