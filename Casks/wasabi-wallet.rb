cask "wasabi-wallet" do
  version "1.1.12.9"
  sha256 "1e44aa928d6001be593d6665432082d85da02f762f8b6e7e473612728167b9b4"

  url "https://github.com/zkSNACKs/WalletWasabi/releases/download/v#{version}/Wasabi-#{version}.dmg",
      verified: "github.com/zkSNACKs/WalletWasabi/"
  name "Wasabi Wallet"
  desc "Open-source, non-custodial, privacy focused Bitcoin wallet"
  homepage "https://www.wasabiwallet.io/"

  depends_on macos: ">= :sierra"

  app "Wasabi Wallet.app"

  zap trash:  "~/.walletwasabi"
end
