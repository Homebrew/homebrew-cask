cask "navicat-for-mysql" do
  version "16"
  sha256 "f42a327d1e7c2cd0a017d767ebed1cb70a400e0a"

  url "https://www.navicat.com/download/direct-download?product=navicat_mysql_en.dmg&location=1"
  name "Navicat for MySQL"
  desc "Navicat for MySQL is the ideal solution for MySQL/MariaDB administration and development."
  homepage "https://www.navicat.com/en/products/navicat-for-mysql"

  auto_updates true

  app "Navicat for MySQL.app"

end
