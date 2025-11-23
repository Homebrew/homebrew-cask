cask "wasabi-wallet" do
  arch arm: "-arm64"

  version "2.7.2"
  sha256 arm:   "2ab11b6706e2d872ec6373d1cfb1e4dfe4c553b5395e0beee586a9412d5f89f3",
         intel: "c1db8a6662a12173c78b11d50e75dab41557cd910ba4e439e2951af09b8c330d"

  url "https://github.com/zkSNACKs/WalletWasabi/releases/download/v#{version}/Wasabi-#{version}#{arch}.dmg"
  name "Wasabi Wallet"
  desc "Open-source, non-custodial, privacy focused Bitcoin wallet"
  homepage "https://github.com/zkSNACKs/WalletWasabi/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Wasabi Wallet.app"

  zap trash:  "~/.walletwasabi"
end
