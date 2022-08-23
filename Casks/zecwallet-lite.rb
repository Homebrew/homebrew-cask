cask "zecwallet-lite" do
  version "1.8.6"
  sha256 "405de933a4d76ea9e1c577304102a8956aaddf09773552b6baa536c9e5470653"

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
