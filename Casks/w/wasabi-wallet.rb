cask "wasabi-wallet" do
  arch arm: "-arm64"

  version "2.8.2"
  sha256 arm:   "037a2760ee66f5e229ff04aa8ab4272ea8eda28320727b541e4d1f7993c7a43b",
         intel: "6859aefff4158b5b71d51433e33cb02ab5f1e5737d213f6771a681643833e511"

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
