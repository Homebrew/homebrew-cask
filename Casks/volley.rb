cask "volley" do
  version "1.0.75"
  sha256 "6741bd74add520b3c27b2c2ee8d63df2ae08f81cf0593a5ac8a47cd4819fef63"

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
