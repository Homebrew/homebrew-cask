cask "wasabi-wallet" do
  arch arm: "-arm64"

  version "2.0.8"
  sha256 arm:   "078e6d15f61a5a3c3b99886506fac0fb7f830fa7c00981f7b7577d3d57ea9ce9",
         intel: "c5ba98c35c4a68142053f67d37fabdf5f2c7bba17be59b55d23cc635f6da523c"

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
