cask "wasabi-wallet" do
  arch arm: "-arm64"

  version "2.0.2.2"
  sha256 arm:   "9eb3fe2013985e58953b4fbcebb963ca96e857d149d7242e9ae20363e2b7f085",
         intel: "ea80e9c4d633a76a75fc417196c3b5c74449bbb2f674e933f3f4f81430145df9"

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
