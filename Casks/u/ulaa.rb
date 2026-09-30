cask "ulaa" do
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "1220a63ffad447c3f844ed16c8b998bc249e5b2a119e97dd6cc734b1fa5b99f9",
         intel: "5909eb7207d9d4e41ff1fc73885c92e288c75aa821fe81edabf60807388d72a2"

  on_arm do
    version "2.49.1"
  end
  on_intel do
    version "2.49.1"
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
