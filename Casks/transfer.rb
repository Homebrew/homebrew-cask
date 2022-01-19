cask "transfer" do
  version "2.0.2,13"
  sha256 "fb7974b6e4160b26ac56df6c7ccb59d9ca23a98178de1a564b1f642d137526c3"

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
