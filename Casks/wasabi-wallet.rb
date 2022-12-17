cask "wasabi-wallet" do
  arch arm: "-arm64"

  version "2.0.2"
  sha256 arm:   "177a66c1e094fb8d000e2dba528b8db620fdb8efc0faf5de6bb76505a949b6fe",
         intel: "d0401d7b8b34a2f75f289c41e71515ff2581c993ef4df9e1084f427352db11ca"

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
