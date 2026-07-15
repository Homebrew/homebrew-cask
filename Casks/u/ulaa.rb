cask "ulaa" do
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "6ebe05a8ec2b04523873c6569406e8ebf50cd8147a46f77b2b2052173b9aa3df",
         intel: "d2cf2616b04f4eb389269da9fa49a89efad78f28ef499634b2a2d4368c66690e"

  on_arm do
    version "2.45.1"
  end
  on_intel do
    version "2.45.2"
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
