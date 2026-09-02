cask "wowup-cf" do
  arch arm: "-arm64"

  version "2.23.1"
  sha256 arm:   "fd03196d792fdb71d71141f6c4f2ed6215880afc6d7d237ca066d1fe786a3c2e",
         intel: "b6e6bdc1f7d6ac7a03009c4e024989cbf5f471914019fa80e5d519b144d88c64"

  url "https://github.com/WowUp/WowUp.CF/releases/download/v#{version}/WowUp-CF-#{version}#{arch}.dmg"
  name "WowUp-CF"
  desc "World of Warcraft addon manager"
  homepage "https://wowup.io/"

  auto_updates true
  depends_on macos: :monterey

  app "WowUp-CF.app"

  uninstall quit: "io.wowupcf.jliddev"

  zap trash: [
    "~/Library/Application Support/WowUp-CF",
    "~/Library/Logs/WowUp-CF",
    "~/Library/Preferences/io.wowupcf.jliddev.plist",
    "~/Library/Saved Application State/io.wowupcf.jliddev.savedState",
  ]
end
