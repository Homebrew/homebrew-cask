cask "wasabi-wallet" do
  arch arm: "-arm64"

  version "2.0.3"
  sha256 arm:   "646a32dc379534a6373c7bc6f72ea82b6a2973fc5c416b67a7c574b8bff2ddcf",
         intel: "03f228ff21d29f908e52a7b508ad2adddc6b21d3a532963aac6b9232feeaac49"

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
