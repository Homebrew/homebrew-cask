cask "wasabi-wallet" do
  version "1.1.12.2"
  sha256 "8e69d483b1dd5a864c19a84efe5fde8589b9375e6f5c8fc7c47b0b23e34a51e6"

  # github.com/zkSNACKs/WalletWasabi/ was verified as official when first introduced to the cask
  url "https://github.com/zkSNACKs/WalletWasabi/releases/download/v#{version}/Wasabi-#{version}.dmg"
  appcast "https://github.com/zkSNACKs/WalletWasabi/releases.atom"
  name "Wasabi Wallet"
  desc "Open-source, non-custodial, privacy focused Bitcoin wallet"
  homepage "https://www.wasabiwallet.io/"

  depends_on macos: ">= :sierra"

  app "Wasabi Wallet.app"
end
