cask "wasabi-wallet" do
  version "1.1.13.0"
  sha256 "1659ff94d84a38605572d59b3903973c47639690949d724182b0ddeb983ca964"

  url "https://github.com/zkSNACKs/WalletWasabi/releases/download/v#{version}/Wasabi-#{version.chomp(".0")}.dmg",
      verified: "github.com/zkSNACKs/WalletWasabi/"
  name "Wasabi Wallet"
  desc "Open-source, non-custodial, privacy focused Bitcoin wallet"
  homepage "https://www.wasabiwallet.io/"

  depends_on macos: ">= :sierra"

  app "Wasabi Wallet.app"

  zap trash:  "~/.walletwasabi"
end
