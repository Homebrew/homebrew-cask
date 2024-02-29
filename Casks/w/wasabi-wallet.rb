cask "wasabi-wallet" do
  arch arm: "-arm64"

  version "2.0.6"
  sha256 arm:   "72590adf8928a84ef1dadadafbd892c5d71b28ebd9d32d8de4665bfe173bbc76",
         intel: "30387d0f944a6e1feb080541eb6a9b86ee97515476624615fae1a78cbcd09c61"

  url "https://github.com/zkSNACKs/WalletWasabi/releases/download/v#{version}/Wasabi-#{version.chomp(".0")}#{arch}.dmg"
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
