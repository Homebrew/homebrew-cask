cask "wasabi-wallet" do
  arch arm: "-arm64"

  version "2.0.7"
  sha256 arm:   "21a4c892f273de459a23d5cf1e4079a7623fa9e6e56406cc7a18083527b9e95b",
         intel: "cba6af60d0a0eb0474b4818dc07e911279e4d283f03d1c305d8ee3c2737e02e8"

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
