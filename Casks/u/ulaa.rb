cask "ulaa" do
  arch arm: "arm64", intel: "x64"

  version "2.43.1"
  sha256 arm:   "8d4f8bdae12823a28a130b00f9e7c5cda017c4573ef90f00cdcb07e4834dc0e3",
         intel: "f17563d9df3cdd4bc6245b8b9db50d64d7604c0ffa1917d36eaf76844f0670d8"

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
