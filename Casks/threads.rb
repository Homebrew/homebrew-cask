cask "threads" do
  version "0.8.0"
  sha256 "3868985c198219e6422ffc529f6e1c69c6b4f83a3901c85c2ff5002cbebec98b"

  url "https://downloads.threads.com/mac/Threads-#{version}.dmg"
  name "Threads"
  desc "Communication tool for focused discussions and decision taking"
  homepage "https://threads.com/"

  livecheck do
    url "https://update.threads.com/update/mac/0.0.0"
    regex(%r{version/(\d+(?:\.\d+)+)/}i)
  end

  app "Threads.app"

  zap trash: [
    "~/Library/Application Support/Threads",
    "~/Library/Caches/com.threads.mac.Threads",
    "~/Library/Caches/com.threads.mac.Threads.ShipIt",
    "~/Library/Preferences/com.threads.mac.Threads.plist",
    "~/Library/Saved Application State/com.threads.mac.Threads.savedState",
  ]
end
