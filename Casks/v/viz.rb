cask "viz" do
  version "2.2.1"
  sha256 "245206dcb6f9226fc1e408ce3d4d8bf28a55f393bf1192ae358324141928f6b0"

  url "https://github.com/alienator88/Viz/releases/download/#{version}/Viz.zip",
      verified: "github.com/alienator88/Viz/"
  name "Viz"
  desc "Utility for extracting text from images, videos, QR codes and barcodes"
  homepage "https://itsalin.com/appInfo/?id=viz"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Viz.app"

  uninstall quit:       "com.alienator88.Viz",
            login_item: "Viz"

  zap trash: [
    "~/Library/Application Support/com.alienator88.Viz",
    "~/Library/Caches/com.alienator88.viz",
    "~/Library/HTTPStorages/com.alienator88.Viz",
    "~/Library/Preferences/com.alienator88.Viz.plist",
  ]
end
