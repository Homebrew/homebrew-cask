cask "voiden" do
  version "0.10.5"
  sha256 "3ab1890cc4583ca175d9a80a8b965e8a0022f10305e7303e727675da3c2af66f"

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
