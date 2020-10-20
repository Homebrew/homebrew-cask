cask "tongbu" do
  version "3.1.1.0"
  sha256 "f4bc8b3658c9d7ba5a6a00ab782a00dfcb6906f951515118bc3b0f40fd900eaf"

  url "http://qd.tongbu.com/qd/tbzsqd/zsmac_#{version}/%E5%90%8C%E6%AD%A5%E5%8A%A9%E6%89%8B_mac_v#{version}_empty.dmg"
  appcast "https://zs.tongbu.com/mac/"
  name "Tongbu"
  desc "Mobile phone management tool"
  homepage "https://zs.tongbu.com/mac/"

  app "Tongbu.app"
end
