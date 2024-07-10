cask "wasabi-wallet" do
  arch arm: "-arm64"

  version "2.1.0.0"
  sha256 arm:   "dbda9a2ba04f7c90efc35a2aaf3587a9fa87d3095a77b28f4dfb664e757b52c2",
         intel: "c876c239865381161e91a20cdbfe441b83e25eef4601812da4ea3a83f3ff90f8"

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
