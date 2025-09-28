cask "wasabi-wallet" do
  arch arm: "-arm64"

  version "2.7.1"
  sha256 arm:   "4251d460abaf36acf9c701b5974bbc44bda97f43f463d189b7c8fb75bc00902c",
         intel: "016f5f90a9a6cac1f3492e13b8dc6b93c1e13ad10149a4409406ae252de2a569"

  url "https://github.com/zkSNACKs/WalletWasabi/releases/download/v#{version}/Wasabi-#{version}#{arch}.dmg"
  name "Wasabi Wallet"
  desc "Open-source, non-custodial, privacy focused Bitcoin wallet"
  homepage "https://github.com/zkSNACKs/WalletWasabi/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Wasabi Wallet.app"

  zap trash:  "~/.walletwasabi"
end
