cask "ulaa" do
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "f5f2315ada3ef150b4d19005b0723d2d53a7ddaba458acf98b204a32227ccc8d",
         intel: "24ff037c3d77477069ba49dd842feb876640960c5fef0e567ac96f7bc864d05a"

  on_arm do
    version "2.44.6"
  end
  on_intel do
    version "2.44.5"
  end

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
