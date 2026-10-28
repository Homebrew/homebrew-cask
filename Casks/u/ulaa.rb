cask "ulaa" do
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "56130746587bc2d281772887977835fd0368ec25c7b6b59b36665e3085b63360",
         intel: "2684d9bc4ba445a475b0c9a96a4e92d5caed591485da29e6ab1b9815019820d1"

  on_arm do
    version "2.51.1"
  end
  on_intel do
    version "2.51.1"
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
