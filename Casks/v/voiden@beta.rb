cask "voiden@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.5.0-beta.1"
  sha256 arm:   "e2f576b2c44fc2c3ba297dc8d656e4b0309fb4c32696c2bfde3abd98c58c71ea",
         intel: "7dde97537d6f5831b172ae526f7446883e52cd781ad14baa49201a2d846fc9eb"

  url "https://voiden-beta-releases.s3.eu-west-1.amazonaws.com/voiden/darwin/#{arch}/Voiden-darwin-#{arch}-#{version}.zip"
  name "Voiden Beta"
  desc "API development tool"
  homepage "https://voiden.md/"

  livecheck do
    url "https://voiden-beta-releases.s3.eu-west-1.amazonaws.com/voiden/darwin/#{arch}/RELEASES.json"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  conflicts_with cask: "voiden"
  depends_on macos: :ventura

  app "Voiden.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.voiden.sfl*",
    "~/Library/Application Support/Voiden",
    "~/Library/Caches/com.electron.voiden",
    "~/Library/Caches/com.electron.voiden.ShipIt",
    "~/Library/HTTPStorages/com.electron.voiden",
    "~/Library/Logs/Voiden",
    "~/Library/Preferences/com.electron.voiden.plist",
  ]
end
