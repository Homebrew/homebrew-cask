cask "zecwallet-lite" do
  version "1.4.5"
  sha256 "69cca2a4ae9c4a3f740040b9ce065b7bda0a761f67562f79a90bae8031ed6bc7"

  url "https://github.com/adityapk00/zecwallet-lite/releases/download/v#{version}/Zecwallet.Lite-#{version}.dmg",
      verified: "github.com/adityapk00/zecwallet-lite/"
  name "Zecwallet Lite"
  desc "Zcash Light Wallet"
  homepage "https://www.zecwallet.co/#download"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Zecwallet Lite.app"

  zap trash: [
    "~/Library/Application Support/Zecwallet Lite",
    "~/Library/Application Support/Zcash/zecwallet-light-wallet.debug.log",
  ]
end
