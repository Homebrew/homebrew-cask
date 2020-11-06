cask "via" do
  version "1.3.1"
  sha256 "d7b9f6fd97cc920cebae8b92417c24f5b78856b8f2fc8512093b2fbfc9302e67"

  # github.com/the-via/releases was verified as official when first introduced to the cask
  url "https://github.com/the-via/releases/releases/download/v#{version}/via-#{version}-mac.dmg"
  appcast "https://github.com/the-via/releases/releases.atom"
  name "VIA"
  homepage "https://caniusevia.com/"

  app "VIA.app"

  zap trash: [
    "~/Library/Application Support/VIA",
    "~/Library/Logs/VIA",
    "~/Library/Preferences/org.via.configurator.plist",
  ]
end
