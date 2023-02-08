cask "threads" do
  version "2.2.5"
  sha256 "b24e56b1a4d81eb429b566f6ed085cddae6e41b7ce191bbfa69d7da7e1e1c7f9"

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
