cask "tongbu" do
  version "3.0.9.0"
  sha256 "32a2309a115d9d017ea0657e5b9a5c69be9d49000ec1a6a3e74890ad9e89c555"

  url "https://qd.tongbu.com/qd/tbzsqd/zsmac_#{version}/Tongbu_mac_#{version}.dmg"
  appcast "https://zs.tongbu.com/mac/"
  name "Tongbu"
  homepage "https://zs.tongbu.com/mac/"

  app "Tongbu.app"
end
