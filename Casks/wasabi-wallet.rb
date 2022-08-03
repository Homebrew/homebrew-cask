cask "wasabi-wallet" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "2.0.1.3"

  if Hardware::CPU.intel?
    sha256 "db6274be5155d3a022dacc834a13acd4b930081e643d07f3d9beb32db4c29156"
  else
    sha256 "3c055e7ee878adc01fa39ba82dfce59839af8bb2df4a857d81021606984e7928"
  end

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
