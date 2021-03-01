cask "wasabi-wallet" do
  version "1.1.12.4"
  sha256 "e31344865a438978b4a988c6d2736423f6394326bc403fa9448341ca7c8437bd"

  url "https://github.com/zkSNACKs/WalletWasabi/releases/download/v#{version}/Wasabi-#{version}.dmg",
      verified: "github.com/zkSNACKs/WalletWasabi/"
  appcast "https://github.com/zkSNACKs/WalletWasabi/releases.atom"
  name "Wasabi Wallet"
  desc "Open-source, non-custodial, privacy focused Bitcoin wallet"
  homepage "https://www.wasabiwallet.io/"

  depends_on macos: ">= :sierra"

  app "Wasabi Wallet.app"
end
