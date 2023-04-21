cask "trivial" do
  version "1.0.9"
  sha256 "1c788ba859f51ba06493239e0835750759613cd8e066249e57a9eeef301ac508"

  url "https://download.decisivetactics.com/downloads/trivial/Trivial_#{version}.zip"
  name "Trivial"
  desc "Simple file transfer server supporting many protocols"
  homepage "https://www.decisivetactics.com/products/trivial/"

  livecheck do
    url "https://api.decisivetactics.com/api/v1/public/appcast?app=trivial&v=1"
    strategy :sparkle, &:short_version
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
