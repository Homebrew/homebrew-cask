cask "wasabi-wallet" do
  arch arm: "-arm64"

  version "2.3.0.0"
  sha256 arm:   "d3d4ef9edbd41cbf6834d0a824ab284b353e4abaca2bce774ac8eaae079230bf",
         intel: "176758dbeb57a3d381d533a321cf3922aa010b9e47b3ea07362c855b9690824d"

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
