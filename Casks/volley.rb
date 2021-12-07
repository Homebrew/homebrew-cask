cask "volley" do
  version "1.0.64"
  sha256 "c0e3f221ecce63c27734c92a77fbb66026bb1691eed3de58e52626b43bae1cea"

  url "https://s3.amazonaws.com/pieces.volley.app/downloads/Volley-#{version}-mac.zip",
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
