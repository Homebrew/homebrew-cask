cask "ulaa" do
  version "2.40.5"
  sha256 :no_check

  url "https://ulaa.com/release/mac/stable/arm64/latest?isDownload=true"
  name "Ulaa Browser"
  desc "Privacy-centric browser with advanced tracking protection"
  homepage "https://ulaa.com/"

  livecheck do
    url :url
    strategy :header_match do |headers|
      headers["content-disposition"]&.scan(/Ulaa[._-]Browser[._-]v?(\d+(?:\.\d+)+)/i)&.flatten&.first
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
