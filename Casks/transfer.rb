cask "transfer" do
  version "2.0.1,12"
  sha256 "59ef78bdeef6d9b9758ffcb665eca252032d9814f07e7f89d8a107db7fb1e769"

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
