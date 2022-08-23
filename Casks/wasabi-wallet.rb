cask "wasabi-wallet" do
  arch arm: "-arm64"

  version "2.0.1.4"
  sha256 arm:   "cd4f7ed70f4470e5f052fc5e42d9afcab090ba5f8896488fd022bb59d30aa101",
         intel: "d2a7076104d5473479b100f3039944efbf7fa599173af43a7dab3c32e7937fc1"

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
