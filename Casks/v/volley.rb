cask "volley" do
  version "1.3.1"
  sha256 "bbc2c8652d89869a48a67b3e3d9b65bf7fd00a5a5919f706dcb00c7b2507bc3c"

  url "https://s3.amazonaws.com/pieces.volley.app/downloads/Volley-#{version}.dmg",
      verified: "s3.amazonaws.com/pieces.volley.app/"
  name "Volley"
  desc "Asynchronous video messaging app"
  homepage "https://www.volleyapp.com/"

  disable! date: "2024-01-04", because: "download artifact not available"

  app "Volley.app"

  zap trash: [
    "~/Library/Application Support/Volley",
    "~/Library/Logs/Volley",
    "~/Library/Preferences/com.volleyapp.prod.VolleyElectron.plist",
    "~/Library/Saved Application State/com.volleyapp.prod.VolleyElectron.savedState",
  ]
end
