cask "wasabi-wallet" do
  arch arm: "-arm64"

  version "2.0.5"
  sha256 arm:   "8c53b938d616cd6d4d2c621418fe011782352e95a795a80defdc77c45fb0dc77",
         intel: "67dcaf2a5d6c3e890b04812ea0a92cc3129e2c1f52879aea5487251984c62953"

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
