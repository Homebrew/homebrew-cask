cask "ulaa" do
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "92ca6f3838ddac73187b27cb7fd743f883f132c72a05708f09fc64c3e4564662",
         intel: "d25fb92b192e5bc4ddf819fa127fa22a5489d0d08ed7416a6f235f2a1a20fb4f"

  on_arm do
    version "2.45.4"
  end
  on_intel do
    version "2.45.3"
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
