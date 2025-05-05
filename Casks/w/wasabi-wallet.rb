cask "wasabi-wallet" do
  arch arm: "-arm64"

  version "2.6.0"
  sha256 arm:   "ae34b778ec85dc60bcba6d9f1d302a01b62892d0d77710eb9a024afa12f8fdde",
         intel: "9360b7ba3fa88485bb0829b1053c136c8201e2104c88f6961e805d9d57a24700"

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
