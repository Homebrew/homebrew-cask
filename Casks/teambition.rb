cask "teambition" do
  version "1.11"
  sha256 :no_check

  url "https://dn-clients.teambition.net/Teambition-latest-darwin.dmg",
      verified: "dn-clients.teambition.net/"
  name "Teambition"
  homepage "https://www.teambition.com/"

  app "Teambition.app"

  zap trash: [
    "~/Library/Application Support/Teambition",
    "~/Library/Caches/Teambition",
    "~/Library/Preferences/com.teambition.teambition.plist",
    "~/Library/Saved Application State/com.teambition.teambition.savedState",
  ]
end
