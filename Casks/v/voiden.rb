cask "voiden" do
  arch arm: "arm64", intel: "x64"

  version "2.3.0"
  sha256 arm:   "32566633d8804b83f58a09b927f6b1ffd76bbafcfe8b349e70a9be9c143a4614",
         intel: "c5b49a1c94d62ec0e333d49697454df1fcebbe746b90977e4e9861b73bccccd4"

  url "https://voiden-releases.s3.eu-west-1.amazonaws.com/voiden/darwin/#{arch}/Voiden-darwin-#{arch}-#{version}.zip"
  name "Voiden"
  desc "API development tool"
  homepage "https://voiden.md/"

  livecheck do
    url "https://voiden-releases.s3.eu-west-1.amazonaws.com/voiden/darwin/#{arch}/RELEASES.json"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  conflicts_with cask: "voiden@beta"
  depends_on macos: :monterey

  app "Voiden.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.voiden.sfl*",
    "~/Library/Application Support/Voiden",
    "~/Library/Caches/com.electron.voiden",
    "~/Library/Caches/com.electron.voiden.ShipIt",
    "~/Library/HTTPStorages/com.electron.voiden",
    "~/Library/Preferences/com.electron.voiden.plist",
  ]
end
