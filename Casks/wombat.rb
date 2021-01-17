cask "wombat" do
  version "0.4.0"
  sha256 "00813e11c214af6924ba3839fb3578c0e7623c068fd326dfecedba1fb38feba5"

  url "https://github.com/rogchap/wombat/releases/download/v#{version}/Wombat_v#{version}_Darwin_x86_64.dmg"
  appcast "https://github.com/rogchap/wombat/releases.atom"
  name "Wombat"
  desc "Cross platform gRPC client"
  homepage "https://github.com/rogchap/wombat"

  app "Wombat.app"

  zap trash: "~/Library/Application Support/Wombat"
end
