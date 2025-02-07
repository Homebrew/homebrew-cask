cask "wasabi-wallet" do
  arch arm: "-arm64"

  version "2.5.0"
  sha256 arm:   "449d2db01dc6ee8f813cdf200540a34e3b1530b3ae20045415381036d203166e",
         intel: "9f1fb02fc90261e1e77031a6aab226a1b4dfe8b893a0d279df71e12da4a9fca6"

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
