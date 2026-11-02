cask "voiden@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.4.0-beta.2"
  sha256 arm:   "2d0029b1b3a0d743985c12441e69c5e232c445a11c5c3077db83480f79580916",
         intel: "822c21b9aa7390550a1cd927ad37e698b1c14a689539d86f0340ccc41180c50b"

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
