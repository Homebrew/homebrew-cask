cask "transfer" do
  version "2.1,14"
  sha256 "de04d44e7d13fd1ddd07c8f040210b4ec64278dd9a034e3e09ff6b69363f09b5"

  url "https://www.intuitibits.com/downloads/Transfer_#{version.csv.first}.dmg"
  name "transfer"
  desc "Standalone TFTP, FTP, and SFTP server"
  homepage "https://www.intuitibits.com/products/transfer/"

  livecheck do
    url "https://www.intuitibits.com/appcasts/transfercast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "Transfer.app"

  zap trash: [
    "~/Library/Application Support/Transfer",
    "~/Library/Caches/com.adriangranados.Transfer",
    "~/Library/Preferences/com.adriangranados.Transfer.plist",
    "~/Transfer",
  ]
end
