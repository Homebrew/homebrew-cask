cask "wasabi-wallet" do
  arch arm: "-arm64"

  version "2.8.4"
  sha256 arm:   "46f24ff28bb85eea0494d54894db9e77a2e6ab8c3d30ff936fbe737de1952fbe",
         intel: "31a08658171d45fba71358192fa9467592bbee3ac0bcc2c5bdd6b3d8061031b3"

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
