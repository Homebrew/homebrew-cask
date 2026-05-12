cask "voiden" do
  arch arm: "arm64", intel: "x64"

  version "1.6.1"
  sha256 arm:   "88cdbd10c893366662fe31890b1a5edb9f4a53a1678301e5a215eb7ec83716cb",
         intel: "afc34afa2553f8c26c3c34f6f39232891389e24f76208a13af0f28bafc83cc3d"

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
