cask "transfer" do
  version "2.0"
  sha256 "7327603387c99bf643e020cbb343d6230eefbc74a92b737742602cd33b542291"

  url "https://www.intuitibits.com/downloads/Transfer_#{version.before_comma}.dmg"
  name "transfer"
  desc "A standalone TFTP, FTP, and SFTP server for your Mac."
  homepage "https://www.intuitibits.com/products/transfer/"

  depends_on macos: ">= :mojave"

  app "Transfer.app"
end
