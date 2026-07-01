cask "ulaa" do
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "52ae470000dc03676e06730b14e89580461a35d3f0d3d7884c36ff1f0f69351b",
         intel: "d8671dee2770cff805b798da320faf9e96fa7baad4e39836b52faae833643b12"

  on_arm do
    version "2.45.0"
  end
  on_intel do
    version "2.45.0"
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
