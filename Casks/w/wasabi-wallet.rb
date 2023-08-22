cask "wasabi-wallet" do
  arch arm: "-arm64"

  version "2.0.4"
  sha256 arm:   "0208f28b7ed922f8a3119b8a9268dd04287ada0e466a994c25a3ce3890ec3f94",
         intel: "e314c748b2bce3c00c9470e4c73da8db7df0a993d5f64ff6662c931c117d8c01"

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
