cask "wasabi-wallet" do
  version "2.0.1.0"
  sha256 "a681d39a859d41c0a82a69e9522c549cfa2761d3e54a9d845f46e31d115df864"

  url "https://github.com/zkSNACKs/WalletWasabi/releases/download/v#{version}/Wasabi-#{version.chomp(".0")}.dmg",
      verified: "github.com/zkSNACKs/WalletWasabi/"
  name "Wasabi Wallet"
  desc "Open-source, non-custodial, privacy focused Bitcoin wallet"
  homepage "https://www.wasabiwallet.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sierra"

  app "Wasabi Wallet.app"

  zap trash:  "~/.walletwasabi"
end
