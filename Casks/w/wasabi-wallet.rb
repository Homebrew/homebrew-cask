cask "wasabi-wallet" do
  arch arm: "-arm64"

  version "2.0.7.1"
  sha256 arm:   "c5b9d9d2bfc076b3150b9cdba1452a62c99dc63a5ab2a55e199cbfc0e158b42c",
         intel: "a8ba922790e1dca44405f344532487139e280d4e2f314c0ea70e7ebd153c5ecc"

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
