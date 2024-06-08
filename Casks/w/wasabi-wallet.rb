cask "wasabi-wallet" do
  arch arm: "-arm64"

  version "2.0.8.1"
  sha256 arm:   "2740ea34925bfe917987ef2d649842d518d7083a0dbe9dae17ace4851a96ffb0",
         intel: "68f9178f2ef32cc2fb371a04bea3250ee1ffcaad77d9224e2b7964ad5804de73"

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
