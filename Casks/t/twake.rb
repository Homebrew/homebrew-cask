cask "twake" do
  arch arm: "arm64", intel: "x64"

  version "5.6.0"
  sha256 arm:   "7ebde241770ae124a646d46899f27779269002ade84d5e894753992f364b09c6",
         intel: "f918fa2ce08b5e64db2b29189756bb928b4c46ae4c9d65ec439f7e3610fdd842"

  url "https://github.com/cozy-labs/cozy-desktop/releases/download/v#{version}/Twake-Desktop-#{arch}.dmg"
  name "Twake Desktop"
  desc "File synchronisation for Twake Workplace"
  homepage "https://twake.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Twake Desktop.app"

  zap trash: [
    "~/.cozy-desktop",
    "~/Library/Application Support/Cozy Drive",
    "~/Library/Preferences/io.cozy.desktop.plist",
    "~/Library/Saved Application State/io.cozy.desktop.savedState",
  ]
end
