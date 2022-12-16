cask "via" do
  version "2.0.5"
  sha256 "43f06ec38157600bedd95a3bee5c0c9a5c754a24cf39331523edc5b70459ad73"

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
