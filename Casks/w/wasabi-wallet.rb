cask "wasabi-wallet" do
  arch arm: "-arm64"

  version "2.0.7.2"
  sha256 arm:   "897ae3eb3606ffb932717e14f7ca68244cc60ec0843a6bcfc988ac8a7c24cb65",
         intel: "0e28b1325d14fc28c4ddc220a8a0d150839ac5bb9237baf1cf07853cbcd5e13d"

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
