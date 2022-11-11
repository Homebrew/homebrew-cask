cask "volley" do
  version "1.1.9"
  sha256 "7ff421eccb960f943c8f7d4d8c21f54f8fa86d51e4adca79004b212908968ee4"

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
