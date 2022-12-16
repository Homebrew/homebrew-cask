cask "threads" do
  version "2.2.4"
  sha256 "7f5b831a1097cdeda629bb760acb40448f59042b11a857e000dfa057cef82a7e"

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
