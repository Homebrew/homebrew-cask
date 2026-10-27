cask "voiden@beta" do
  arch arm: "arm64", intel: "x64"

  version "2.4.0-beta.1"
  sha256 arm:   "cf285ff3432e24bc629c095ab256bf5eb19a64fb8b2e142838631b6e6bf5cbfb",
         intel: "b3063f75ecec10db4b34692384ae120b13484a67156d72e615c6cb28022f4d95"

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
    "~/Library/Preferences/com.electron.voiden.plist",
  ]
end
