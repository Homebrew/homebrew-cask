cask "viz" do
  version "2.3.0"
  sha256 "8adfaf6dbb314ec143be1548155ee044decc1718a325f2ee658a494d560d401b"

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
