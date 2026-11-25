cask "voiden" do
  arch arm: "arm64", intel: "x64"

  version "2.4.1"
  sha256 arm:   "2c3aa2f217f16a50f8c94262e296631c19f3ffb699a027d5dd399b3b054d4c59",
         intel: "1ef38d681662b8b873bc867d5246803e45eca3dbd5cd731e243aa1b4bc2e13b0"

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
