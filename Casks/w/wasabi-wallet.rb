cask "wasabi-wallet" do
  arch arm: "-arm64"

  version "2.8.3"
  sha256 arm:   "7b69df5fd02d0a2e34bfa5dff760d3fac2dc5001f6267d2f78f8b81e7b40ca6d",
         intel: "3769796d5224d046676b3bf4b73ecc7da11fc997f80289fc175e4964c8479241"

  url "https://github.com/zkSNACKs/WalletWasabi/releases/download/v#{version}/Wasabi-#{version}#{arch}.dmg"
  name "Wasabi Wallet"
  desc "Open-source, non-custodial, privacy focused Bitcoin wallet"
  homepage "https://github.com/zkSNACKs/WalletWasabi/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Wasabi Wallet.app"

  uninstall quit: "zksnacks.wasabiwallet"

  zap trash: "~/.walletwasabi"
end
