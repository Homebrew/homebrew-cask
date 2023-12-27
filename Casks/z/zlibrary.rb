cask "zlibrary" do
  version "1.0.2"
  sha256 :no_check

  url "https://go-to-zlibrary.se/soft/zlibrary-setup-latest.dmg"
  name "zlibrary"
  desc "Desktop Application Launcher for Accessing Z-Library"
  homepage "https://go-to-zlibrary.se/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :high_sierra"

  app "Z-library.app"

  zap trash: [
    "~/Library/Application Support/Z-library",
    "~/Library/Preferences/zlibrary.plist",
    "~/Library/Saved Application State/zlibrary.savedState",
  ]
end
