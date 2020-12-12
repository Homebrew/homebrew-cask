cask "threads" do
  version "0.5.1"
  sha256 "649425f5ee960e197578f689898a4df9d96c6b6c0d8d51b9867ff8a4142c9b6a"

  url "https://downloads.threads.com/mac/Threads-#{version}.dmg"
  appcast "https://update.threads.com/update/mac/0.0.0"
  name "Threads"
  homepage "https://threads.com/"

  app "Threads.app"

  zap trash: [
    "~/Library/Application Support/Threads",
    "~/Library/Caches/com.threads.mac.Threads",
    "~/Library/Caches/com.threads.mac.Threads.ShipIt",
    "~/Library/Preferences/com.threads.mac.Threads.plist",
    "~/Library/Saved Application State/com.threads.mac.Threads.savedState",
  ]
end
