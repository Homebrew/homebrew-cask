cask "trivial" do
  version "1.0.8,01000.87.50"
  sha256 "3d15a052a18645942c1574869cc450e211ccf7dbdb382c25058c8563ae04938c"

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
