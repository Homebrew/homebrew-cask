cask "ulaa" do
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "dc750d332d2eed7448b5aa42307c6a34244c521cf8e6e5732ba5c028efa97b9c",
         intel: "c1b887b3f0f6b52263099c2b181db3e9f692b7fbbdf5160293f76a29f4df7162"

  on_arm do
    version "2.51.0"
  end
  on_intel do
    version "2.51.0"
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
