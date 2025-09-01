cask "wasabi-wallet" do
  arch arm: "-arm64"

  version "2.7.0"
  sha256 arm:   "17d955f39badf295fbb86fad70b956b2444b28d87209f5ff6b4c502e836c4a72",
         intel: "ff8e3524d09264ee236d8bdde575d51ad8fcfb4309bc1b989775be8914782af1"

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
