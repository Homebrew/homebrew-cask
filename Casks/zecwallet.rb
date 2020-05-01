cask 'zecwallet' do
  version '1.1.8'
  sha256 '052b271e992cc9513f39875a5d373f41a96d0a212c2f7ca8f223d22e7890a94a'

  url "https://github.com/adityapk00/zecwallet-lite/releases/download/v#{version}/Zecwallet.Lite-#{version}.dmg"
  name 'Zecwallet Lite'
  homepage 'https://www.zecwallet.co/'

  app 'Zecwallet Lite.app'

  zap trash: [
    "~/Library/Preferences/co.zecwallet.lite",
    "~/Library/Preferences/co~/Libraryzecwallet~/Librarylite~/Libraryplist",
    "~/Library/Preferences/co.zecwallet.lite.plist",
    "~/Library/Application Support/zecwallet",
    "~/Library/Application Support/Zecwallet Lite",
    "~/Library/Application Support/Zcash/zecwallet-light-wallet.dat",
    "~/Library/Application Support/Zcash/zecwallet-light-wallet.debug.dat",
    "~/Library/Application Support/Zcash",
    "~/Library/Logs/Zecwallet Lite",
    "~/Library/Saved Application State/co~/Libraryzecwallet~/Librarylite~/LibrarysavedState",
    "~/Library/Saved Application State/co.zecwallet.lite.savedState"
  ]
end
