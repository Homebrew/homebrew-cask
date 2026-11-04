cask "ulaa" do
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "69a076240a57cb57a4b2bd53d286237d695c95983954416cf2bfac806c00978a",
         intel: "c744d93bf3555f22ee0fd343003b17c99f00257d7c178f0870694d25cf077c2b"

  on_arm do
    version "2.52.0"
  end
  on_intel do
    version "2.52.0"
  end

  url "https://downloads.zohocdn.com/ulaa-browser/release/mac/stable/#{arch}/Ulaa-Browser-v#{version}-#{arch}.dmg"
  name "Ulaa Browser"
  desc "Privacy-centric browser with advanced tracking protection"
  homepage "https://ulaa.com/"

  livecheck do
    url "https://ulaa.com/release/mac/stable/#{arch}/latest?isDownload=true"
    regex(/Ulaa[._-]Browser[._-]v?(\d+(?:\.\d+)+)/i)
    strategy :header_match
  end

  depends_on macos: :ventura

  app "Ulaa.app"

  uninstall quit: "com.primeum.Browser"

  zap trash: [
    "~/Library/Application Support/Ulaa",
    "~/Library/Caches/Ulaa",
    "~/Library/HTTPStorages/com.primeum.Browser",
    "~/Library/Preferences/com.primeum.Browser.plist",
    "~/Library/Preferences/com.zoho.ulaa.plist",
    "~/Library/Saved Application State/com.zoho.ulaa.savedState",
  ]
end
