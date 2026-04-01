cask "ulaa" do
  arch arm: "arm64", intel: "x64"

  version "2.41.5"
  sha256 arm:   "08fca87f6ce26320e8b937818d9b02a640f27315880e39e961d223df8766da0f",
         intel: "553df66768132b090f3522cba6c5daf29a48d659af363d4c4e8f911b30ed5809"

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
