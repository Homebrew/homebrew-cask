cask "ulaa" do
  arch arm: "arm64", intel: "x64"

  version "2.41.3"
  sha256 arm:   "2b844a1a9a9d6a9a838153ff2236f2ab018029419818d9da330745191d1f8e86",
         intel: "a4a6171a47b605e915d2c32843355c547debf3f67e8c9ee9485551ece812e538"

  url "https://downloads.zohocdn.com/ulaa-browser/release/mac/stable/#{arch}/Ulaa-Browser-v#{version}-#{arch}.dmg",
      verified: "downloads.zohocdn.com/ulaa-browser/"
  name "Ulaa Browser"
  desc "Privacy-centric browser with advanced tracking protection"
  homepage "https://ulaa.com/"

  livecheck do
    url "https://ulaa.com/release/mac/stable/#{arch}/latest?isDownload=true"
    regex(/Ulaa[._-]Browser[._-]v?(\d+(?:\.\d+)+)/i)
    strategy :header_match
  end

  depends_on macos: ">= :monterey"

  app "Ulaa.app"

  zap trash: [
    "~/Library/Application Support/Ulaa",
    "~/Library/Caches/Ulaa",
    "~/Library/Preferences/com.zoho.ulaa.plist",
    "~/Library/Saved Application State/com.zoho.ulaa.savedState",
  ]
end
