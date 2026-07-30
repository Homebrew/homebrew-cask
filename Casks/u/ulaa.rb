cask "ulaa" do
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "0f2ad5cf42d7aed64b54388b013335c52837bd37018e17573ae57e387b8f8901",
         intel: "9aa48a03d926b8f7570cb2cbf70085ec9bd3e2b2646a3b7a6800e1a4fdb8c049"

  on_arm do
    version "2.46.0"

    depends_on macos: :ventura
  end
  on_intel do
    version "2.45.5"

    depends_on macos: :monterey
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

  depends_on :macos

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
