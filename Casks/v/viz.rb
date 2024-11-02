cask "viz" do
  version "1.6"
  sha256 "c2d68bd36962d95fe411f355913535620669ad98f80a3faffa0e33c0e43bde78"

  url "https://github.com/alienator88/Viz/releases/download/#{version}/Viz.zip"
  name "Viz"
  desc "Text, QR-Code and Barcode extractor for Images and Videos"
  homepage "https://github.com/alienator88/Viz"

  livecheck do
    url "https://github.com/alienator88/Viz"
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Viz.app"

  zap trash: [
    "/var/folders/9l/dwf3_85d0dz2rs5d36psy8140000gn/C/com.alienator88.Viz",
    "~/Library/Application Support/com.alienator88.Viz",
    "~/Library/Caches/com.alienator88.viz",
    "~/Library/HTTPStorages/com.alienator88.Viz",
    "~/Library/Preferences/com.alienator88.Viz.plist",
  ]
end
