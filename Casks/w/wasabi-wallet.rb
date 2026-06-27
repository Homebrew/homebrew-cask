cask "wasabi-wallet" do
  arch arm: "-arm64"

  version "2.8.0"
  sha256 arm:   "b00324002fbbf75a25b619a698e1be5e77ee3cdc78701046aacc3ac55e1d5867",
         intel: "936aa12a36f39b6ca891db6ecef5a6b2f8735d8d8fd6163e857ed319e0a4a36c"

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
