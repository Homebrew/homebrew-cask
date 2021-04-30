cask "zecwallet-lite" do
  version "1.4.6"
  sha256 "cb3644eb755136b39d911ddc31419817ae0aa82ff324f23fb7b86f0787ff2ee7"

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
