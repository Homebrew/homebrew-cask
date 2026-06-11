cask "ulaa" do
  arch arm: "arm64", intel: "x64"

  version "2.44.1"
  sha256 arm:   "5601353f3736aaca6caaea27474c3c6ed6fdcd4cbeac9fbff33516e2e318dc58",
         intel: "fdba127c3f8d5045a6c46b34bf398a0ed774e7e2515062732044a9f93be45b5a"

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

  depends_on macos: :monterey

  app "Ulaa.app"

  zap trash: [
    "~/Library/Application Support/Ulaa",
    "~/Library/Caches/Ulaa",
    "~/Library/Preferences/com.zoho.ulaa.plist",
    "~/Library/Saved Application State/com.zoho.ulaa.savedState",
  ]
end
