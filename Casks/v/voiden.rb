cask "voiden" do
  version "0.10.7"
  sha256 "87fbabc4122868ed0cc93bd84e18cb2877dab3a2c6442ebe41772d9a17285a57"

  url "https://voiden-releases.s3.eu-west-1.amazonaws.com/voiden/darwin/arm64/Voiden-darwin-arm64-#{version}.zip",
      verified: "voiden-releases.s3.eu-west-1.amazonaws.com/"
  name "Voiden"
  desc "API development tool"
  homepage "https://voiden.md/"

  livecheck do
    url "https://voiden-releases.s3.eu-west-1.amazonaws.com/voiden/darwin/arm64/RELEASES.json"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  depends_on arch: :arm64
  depends_on macos: ">= :catalina"

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
