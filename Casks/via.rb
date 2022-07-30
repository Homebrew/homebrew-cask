cask "via" do
  version "2.0.4"
  sha256 "761500d5a40d0b7e64b0ccb94f69b42d40e9b3c2f48f41894cbee0dd7b13008f"

  url "https://github.com/the-via/releases/releases/download/v#{version}/via-#{version}-mac.dmg",
      verified: "github.com/the-via/releases/"
  name "VIA"
  desc "Keyboard configurator"
  homepage "https://caniusevia.com/"

  app "VIA.app"

  zap trash: [
    "~/Library/Application Support/VIA",
    "~/Library/Logs/VIA",
    "~/Library/Preferences/org.via.configurator.plist",
  ]
end
