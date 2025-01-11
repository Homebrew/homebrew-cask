cask "wasabi-wallet" do
  arch arm: "-arm64"

  version "2.4.0"
  sha256 arm:   "932188909e7ed9bd97acd28fbb32b38995d223f6aebdcb81f4756e8e3616914e",
         intel: "3f4f50790154d845e14dc9299aa5bb7033bd7f483507d64ff7de05933881794c"

  url "https://github.com/zkSNACKs/WalletWasabi/releases/download/v#{version}/Wasabi-#{version}#{arch}.dmg"
  name "Wasabi Wallet"
  desc "Open-source, non-custodial, privacy focused Bitcoin wallet"
  homepage "https://github.com/zkSNACKs/WalletWasabi/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "Wasabi Wallet.app"

  zap trash:  "~/.walletwasabi"
end
