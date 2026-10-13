cask "voiden@beta" do
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "7d028da2b48274d14762f3264750d56a299ee667e8b79b9ba011cd762cab927d",
         intel: "2cb0d77440b43da6479fbdbb900fe4a3f7452b12de706381b3ee381dc552c19f"

  on_arm do
    version "2.3.3-beta.1"
  end
  on_intel do
    version "2.3.1"
  end

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
