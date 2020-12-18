cask "wasabi-wallet" do
  version "1.1.12.3"
  sha256 "3e69fe17a51de9ffb62ebb4015587e707be5bd716908756d9f42603ad62b11ab"

  url "https://github.com/zkSNACKs/WalletWasabi/releases/download/v#{version}/Wasabi-#{version}.dmg",
      verified: "github.com/zkSNACKs/WalletWasabi/"
  appcast "https://github.com/zkSNACKs/WalletWasabi/releases.atom"
  name "Wasabi Wallet"
  desc "Open-source, non-custodial, privacy focused Bitcoin wallet"
  homepage "https://www.wasabiwallet.io/"

  depends_on macos: ">= :sierra"

  app "Wasabi Wallet.app"
end
