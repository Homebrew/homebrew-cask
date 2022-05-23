cask "volley" do
  version "1.0.72"
  sha256 "a7f4b333ccabd6123a0d5ece29cde31c10906e2a6e94bee8490612e7e55ec7f6"

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
