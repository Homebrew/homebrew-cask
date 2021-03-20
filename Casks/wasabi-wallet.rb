cask "wasabi-wallet" do
  version "1.1.12.5"
  sha256 "6dd0393f1828e11559c220a5fd68bf54db45c036474af4275ffc50cf3775c229"

  url "https://github.com/zkSNACKs/WalletWasabi/releases/download/v#{version}/Wasabi-#{version}.dmg",
      verified: "github.com/zkSNACKs/WalletWasabi/"
  appcast "https://github.com/zkSNACKs/WalletWasabi/releases.atom"
  name "Wasabi Wallet"
  desc "Open-source, non-custodial, privacy focused Bitcoin wallet"
  homepage "https://www.wasabiwallet.io/"

  depends_on macos: ">= :sierra"

  app "Wasabi Wallet.app"
end
