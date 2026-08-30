cask "voiden@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.3.0-beta.1"
  sha256 arm:   "9769ce32513b26fc607e66166b5fcdcfec89cf5befffd41b327513a982985ba5",
         intel: "50871e23618f805f2fbba655a74ee3d873aca6c292adeb5442919354a5504305"

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
