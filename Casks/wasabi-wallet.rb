cask "wasabi-wallet" do
  version "1.1.12.1"
  sha256 "4ef720225072bdee117bcb735523d54fe7c10666aaa9e601be20a1daa2dd82bf"

  # github.com/zkSNACKs/WalletWasabi/ was verified as official when first introduced to the cask
  url "https://github.com/zkSNACKs/WalletWasabi/releases/download/v#{version}/Wasabi-#{version}.dmg"
  appcast "https://github.com/zkSNACKs/WalletWasabi/releases.atom"
  name "Wasabi Wallet"
  desc "Open-source, non-custodial, privacy focused Bitcoin wallet"
  homepage "https://www.wasabiwallet.io/"

  depends_on macos: ">= :sierra"

  app "Wasabi Wallet.app"
end
