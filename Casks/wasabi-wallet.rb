cask "wasabi-wallet" do
  version "1.1.13.1"
  sha256 "b7403702b8ac11d1651eb0675718f2241f2d17605370b235f9cdc158352cfead"

  url "https://github.com/zkSNACKs/WalletWasabi/releases/download/v#{version}/Wasabi-#{version.chomp(".0")}.dmg",
      verified: "github.com/zkSNACKs/WalletWasabi/"
  name "Wasabi Wallet"
  desc "Open-source, non-custodial, privacy focused Bitcoin wallet"
  homepage "https://www.wasabiwallet.io/"

  depends_on macos: ">= :sierra"

  app "Wasabi Wallet.app"

  zap trash:  "~/.walletwasabi"
end
