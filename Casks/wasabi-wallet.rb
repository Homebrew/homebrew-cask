cask "wasabi-wallet" do
  version "1.1.12.6"
  sha256 "bcd392e0be832078569b518e2e1f72e49485b56cac29c203746bd47794468a50"

  url "https://github.com/zkSNACKs/WalletWasabi/releases/download/v#{version}/Wasabi-#{version}.dmg",
      verified: "github.com/zkSNACKs/WalletWasabi/"
  name "Wasabi Wallet"
  desc "Open-source, non-custodial, privacy focused Bitcoin wallet"
  homepage "https://www.wasabiwallet.io/"

  depends_on macos: ">= :sierra"

  app "Wasabi Wallet.app"
end
