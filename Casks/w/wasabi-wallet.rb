cask "wasabi-wallet" do
  arch arm: "-arm64"

  version "2.8.5"
  sha256 arm:   "cae8d3022ada9fb0c28f91f55d82734d48ee3545c92b953564017dc63d1704de",
         intel: "55f1bdb330d9c4806b17a6e4e1c1e7d717fc12cfde966ddc8c5bb1c6d4bea210"

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

  uninstall quit: "zksnacks.wasabiwallet"

  zap trash: "~/.walletwasabi"
end
