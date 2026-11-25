cask "voiden@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.4.1-beta.1"
  sha256 arm:   "3a79ee6fe5a99a478f0e8247f8489f77aacad65930234194715edc339088266a",
         intel: "10a350ff03c59d20bd37dce85f8d6ea67526a0e5092b5ff2a581fedabeb86ffe"

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
