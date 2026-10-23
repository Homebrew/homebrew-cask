cask "voiden" do
  arch arm: "arm64", intel: "x64"

  version "2.3.4"
  sha256 arm:   "b37431a791f46a5033c254e629003aa200191330b50113f489f9e3a48d3e192a",
         intel: "f69aa6e4996ce15a2f673861c730b7dcd7d87eae6aab81a02bdef7be9ecc9455"

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
  depends_on macos: :monterey

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
