cask "zecwallet-lite" do
  version "1.7.1"
  sha256 "2ddac2cb0fbba8cd2c4f590e82fd2869c43c3e457efa76878f0a8c34a3367e63"

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
