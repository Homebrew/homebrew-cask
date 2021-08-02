cask "transfer" do
  version "2.0"
  sha256 "7327603387c99bf643e020cbb343d6230eefbc74a92b737742602cd33b542291"

  url "https://www.intuitibits.com/downloads/Transfer_#{version.before_comma}.dmg"
  name "transfer"
  desc "Standalone TFTP, FTP, and SFTP server"
  homepage "https://www.intuitibits.com/products/transfer/"

  depends_on macos: ">= :mojave"

  app "Transfer.app"

  zap trash: [
    "~/Library/Application Support/Transfer",
    "~/Library/Caches/com.adriangranados.Transfer",
    "~/Library/Caches/com.apple.helpd/Generated/com.intuitibits.transfer.help*2.0",
    "~/Library/Group Containers/com.apple.MessagesLegacyTransferArchive",
    "~/Library/Preferences/com.adriangranados.Transfer.plist",
    "~/Transfer",
  ]
end
