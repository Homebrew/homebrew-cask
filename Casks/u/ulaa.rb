cask "ulaa" do
  arch arm: "arm64", intel: "x64"

  version "2.41.0"
  sha256 arm:   "b921095dcedaebf3465381c2fe32909f8b49fb6f8b88ba06ba247291b233b51e",
         intel: "f92815f7f64197604422bd37f3ff1aba44fc047d1272ac044860b18f69d5cbdf"

  url "https://downloads.zohocdn.com/ulaa-browser/release/mac/stable/#{arch}/Ulaa-Browser-v#{version}-#{arch}.dmg"
  name "Ulaa Browser"
  desc "Privacy-centric browser with advanced tracking protection"
  homepage "https://ulaa.com/"

  livecheck do
    url "https://ulaa.com/release/mac/stable/arm64/latest?isDownload=true"
    strategy :header_match do |headers|
      match = headers["location"]&.match(/Ulaa[._-]Browser[._-]v?(\d+(?:\.\d+)+)/i)
      match&.captures&.first
    end
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
