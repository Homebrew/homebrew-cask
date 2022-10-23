cask "threads" do
  version "2.2.0"
  sha256 "4c2e4d1e33821610a4723307a8ba9292b944e73118d09ceba5c5090faa9170ac"

  url "https://starupdate.threads.com/download/version/#{version}/Threads-darwin-#{version}.zip"
  name "Threads"
  desc "Communication tool for focused discussions and decision taking"
  homepage "https://threads.com/"

  livecheck do
    url "https://starupdate.threads.com/update/mac/0.0.0"
    regex(%r{version/(\d+(?:\.\d+)+)/}i)
  end

  auto_updates true

  app "Threads.app"

  zap trash: [
    "~/Library/Application Support/Threads",
    "~/Library/Caches/com.threads.mac.Starling",
    "~/Library/Caches/com.threads.mac.Starling.ShipIt",
    "~/Library/Preferences/com.threads.mac.Starling.plist",
    "~/Library/Saved Application State/com.threads.mac.Starling.savedState",
  ]
end
