cask "ulaa" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "2.44.4"
    sha256 "7d5c6458641746c97139544f87c3d62164c69b416920301706791429a7fbd0ca"
  end
  on_intel do
    version "2.44.3"
    sha256 "1aee091a1f2cb2530e8c85aa5aea28f4ebffdb1308318b2e2cf9d5fde0c94a09"
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
