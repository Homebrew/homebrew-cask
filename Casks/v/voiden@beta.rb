cask "voiden@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.2.0"
  sha256 arm:   "cc36c7774cbc8ee27ad1e3635195b66d317fd9539426f83e0d0baed4cc30fb37",
         intel: "a156d5b838cb3da4ea5dee4cf2dc374c277c4f4bbf6cbca336bc3cfa0f2f3b6d"

  url "https://voiden-beta-releases.s3.eu-west-1.amazonaws.com/voiden/darwin/#{arch}/Voiden-darwin-#{arch}-#{version}.zip",
      verified: "voiden-beta-releases.s3.eu-west-1.amazonaws.com/"
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
