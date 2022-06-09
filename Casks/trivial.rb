cask "trivial" do
  version "1.0.7,01000.77.50"
  sha256 "a0a3d0a59ccf23368011acca93c76ef6d7d76539391824bc3c72c2425047716b"

  url "https://download.decisivetactics.com/downloads/trivial/Trivial_#{version.csv.first}.zip"
  name "Trivial"
  desc "Simple file transfer server supporting many protocols"
  homepage "https://www.decisivetactics.com/products/trivial/"

  livecheck do
    url "https://api.decisivetactics.com/api/v1/public/appcast?app=trivial&v=1"
    strategy :sparkle
  end

  app "Trivial.app"

  uninstall launchctl: "com.decisivetactics.trivial-server",
            delete:    [
              "/Library/Application Support/com.decisivetactics.trivial",
              "/Library/LaunchDaemons/com.decisivetactics.trivial-server.plist",
            ]

  zap trash: [
    "~/Library/Caches/com.decisivetactics.trivial",
    "~/Library/HTTPStorages/com.decisivetactics.trivial",
    "~/Library/Preferences/com.decisivetactics.trivial.plist",
  ]
end
