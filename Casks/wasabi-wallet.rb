cask "wasabi-wallet" do
  arch arm: "-arm64"

  version "2.0.2.1"
  sha256 arm:   "3a43d2bff555ee270b05a901d27b9c4ba9ab6d95b844d5956501899b4669fa82",
         intel: "c826a1f734565efb1263d281da521acf7d8a0dd4237c9760cc1e66a9d3fa85ac"

  url "https://github.com/zkSNACKs/WalletWasabi/releases/download/v#{version}/Wasabi-#{version.chomp(".0")}#{arch}.dmg"
  name "Wasabi Wallet"
  desc "Open-source, non-custodial, privacy focused Bitcoin wallet"
  homepage "https://github.com/zkSNACKs/WalletWasabi/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "Wasabi Wallet.app"

  zap trash:  "~/.walletwasabi"
end
