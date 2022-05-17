cask "trivial" do
  version "1.0.6,01000.67.50"
  sha256 "1686fc11dd4271d27c0803a8f382b8cf9c9ad917cdeb2203766199cbf7f33136"

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
