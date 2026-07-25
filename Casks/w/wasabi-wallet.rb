cask "wasabi-wallet" do
  arch arm: "-arm64"

  version "2.8.1"
  sha256 arm:   "e53af3237677c566ac509bd7d762b4a4df8f1583edde55c4064343585351c903",
         intel: "c63990123db5b4f16b08f77d34616c053ed215eb5b1d6c204559920e599922b4"

  url "https://github.com/zkSNACKs/WalletWasabi/releases/download/v#{version}/Wasabi-#{version}#{arch}.dmg"
  name "Wasabi Wallet"
  desc "Open-source, non-custodial, privacy focused Bitcoin wallet"
  homepage "https://github.com/zkSNACKs/WalletWasabi/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Wasabi Wallet.app"

  zap trash:  "~/.walletwasabi"
end
