cask "voiden" do
  arch arm: "arm64", intel: "x64"

  version "1.3.1"
  sha256 arm:   "62d90c86ef9ee60816ab9c4efd10de627cab8d931a30275efe23bd1896cfd646",
         intel: "4b937514cdfcf473fd200575894caaabacf93db5ebed8619f50aead4b8c9c069"

  url "https://voiden-releases.s3.eu-west-1.amazonaws.com/voiden/darwin/#{arch}/Voiden-darwin-#{arch}-#{version}.zip",
      verified: "voiden-releases.s3.eu-west-1.amazonaws.com/"
  name "Voiden"
  desc "API development tool"
  homepage "https://voiden.md/"

  livecheck do
    url "https://voiden-releases.s3.eu-west-1.amazonaws.com/voiden/darwin/#{arch}/RELEASES.json"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

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
