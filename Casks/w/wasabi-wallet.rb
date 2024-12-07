cask "wasabi-wallet" do
  arch arm: "-arm64"

  version "2.3.1"
  sha256 arm:   "af8586555582b061f807284ab643eabb8745caf0da34ed4250c17f8a9a13e639",
         intel: "762a81770538b1b36ca354261fdae5deabc275f7084a2b6b9278b7a9ca371b59"

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
