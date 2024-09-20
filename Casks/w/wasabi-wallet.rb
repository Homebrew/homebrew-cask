cask "wasabi-wallet" do
  arch arm: "-arm64"

  version "2.2.1.0"
  sha256 arm:   "7cbc55cf853984d518c4c3b426d743669d611b1384a72ccaa06e1552343a4316",
         intel: "78bc750db7e3a7fec6923f4c4adbe02ffa42d284bc4e5d51090303fa97a23e7b"

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
