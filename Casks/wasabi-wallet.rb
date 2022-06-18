cask "wasabi-wallet" do
  version "2.0.0.0"
  sha256 "f1dc3bc06b64460a2eccada80f09c148cb66e08dcb838b96d9d61e7b74049c71"

  url "https://github.com/zkSNACKs/WalletWasabi/releases/download/v#{version}/Wasabi-#{version.chomp(".0")}.dmg",
      verified: "github.com/zkSNACKs/WalletWasabi/"
  name "Wasabi Wallet"
  desc "Open-source, non-custodial, privacy focused Bitcoin wallet"
  homepage "https://www.wasabiwallet.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sierra"

  app "Wasabi Wallet.app"

  zap trash:  "~/.walletwasabi"
end
