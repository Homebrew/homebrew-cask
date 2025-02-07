cask "wasabi-wallet" do
  arch arm: "-arm64"

  version "2.5.1"
  sha256 arm:   "31943d8dc1d00045d7cafb8cc448f7213549b6d1a8dc5a1291f3ce3ba9995fd9",
         intel: "ea0a9db9b556dc4e3d915f900c6b48c3ede9eeb491c595785dda0182c2c0d42a"

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
