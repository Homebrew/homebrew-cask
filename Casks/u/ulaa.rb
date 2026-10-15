cask "ulaa" do
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "66ecb6d3731079aea41da979b4e8c4e39ecfd531723800185aa94c8e9f2a724b",
         intel: "002227b6f762d0ae5483d2202eda4180638c648009002e7c201f30c490a96e43"

  on_arm do
    version "2.50.2"
  end
  on_intel do
    version "2.50.2"
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
