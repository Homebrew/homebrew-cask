cask "zecwallet-lite" do
  version "1.8.8"
  sha256 "3ec1484a28a851bc4dfc133cfd097c1f74939a59cde34f21039f6020ffa352aa"

  url "https://github.com/adityapk00/zecwallet-lite/releases/download/v#{version}/Zecwallet.Lite-#{version}.dmg",
      verified: "github.com/adityapk00/zecwallet-lite/"
  name "Zecwallet Lite"
  desc "Zcash Light Wallet"
  homepage "https://www.zecwallet.co/#download"

  deprecate! date: "2023-12-17", because: :discontinued

  app "Zecwallet Lite.app"

  zap trash: [
    "~/Library/Application Support/Zecwallet Lite",
    "~/Library/Application Support/Zcash/zecwallet-light-wallet.debug.log",
  ]
end
