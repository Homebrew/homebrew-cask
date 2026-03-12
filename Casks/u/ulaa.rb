cask "ulaa" do
  version "2.41.0"
  sha256 "b921095dcedaebf3465381c2fe32909f8b49fb6f8b88ba06ba247291b233b51e"

  url "https://ulaa.com/release/mac/stable/arm64/latest?isDownload=true"
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
