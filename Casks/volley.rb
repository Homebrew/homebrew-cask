cask "volley" do
  version "1.2.0"
  sha256 "745ef76b1c867054917018826ceb3215e74cdf7678c524fae262718c53a6b1b1"

  url "https://s3.amazonaws.com/pieces.volley.app/downloads/Volley-#{version}.dmg",
      verified: "s3.amazonaws.com/pieces.volley.app/"
  name "Volley"
  desc "Asynchronous video messaging app"
  homepage "https://www.volleyapp.com/"

  livecheck do
    url "https://s3.amazonaws.com/pieces.volley.app/downloads/latest-mac.yml"
    strategy :electron_builder
  end

  app "Volley.app"

  zap trash: [
    "~/Library/Application Support/Volley",
    "~/Library/Logs/Volley",
    "~/Library/Preferences/com.volleyapp.prod.VolleyElectron.plist",
    "~/Library/Saved Application State/com.volleyapp.prod.VolleyElectron.savedState",
  ]
end
