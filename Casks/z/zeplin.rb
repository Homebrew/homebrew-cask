cask "zeplin" do
  version "10.26.0"
  sha256 :no_check

  url "https://pkg.zeplin.io/macos/latest/zeplin-darwin-universal.zip"
  name "Zeplin"
  desc "Share, organise and collaborate on designs"
  homepage "https://zeplin.io/"

  livecheck do
    url "https://eo2g77bw567gdu7qmz2g4ezsyi0ybgpa.lambda-url.us-west-2.on.aws/?version=0.0.0"
    strategy :json do |json|
      json["name"]
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Zeplin.app"

  zap trash: [
    "~/Library/Application Support/Zeplin",
    "~/Library/Caches/io.zeplin.osx",
    "~/Library/Caches/io.zeplin.osx.ShipIt",
    "~/Library/HTTPStorages/io.zeplin.osx",
    "~/Library/Logs/Zeplin",
    "~/Library/Preferences/io.zeplin.osx.plist",
  ]
end
