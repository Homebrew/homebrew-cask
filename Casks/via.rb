cask "via" do
  version "2.1.0"
  sha256 "cedba024906fa33ef3c3b706145ebebaca50e4a57e80efc9fae518ff982060df"

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
