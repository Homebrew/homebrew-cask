cask "wasabi-wallet" do
  arch arm: "-arm64"

  version "2.2.0.0"
  sha256 arm:   "8d9580b125900a85b7793b42ba965aa59b6a4eea128e0da4679dcbcab44eefb5",
         intel: "74f3bd9e9a6964a6b4cc005d6e3d68823c525cfd4c074b54a1009642b9db02f2"

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
