cask "tongbu" do
  version "3.1.3.0"
  sha256 "5cb5594de7d60c5d02d9d59b3833abb7726378617421a895cc2f49d9baa2adf0"

  url "https://qd.tongbu.com/qd/tbzsqd/zsmac_#{version}/%E5%90%8C%E6%AD%A5%E5%8A%A9%E6%89%8B_mac_v#{version}_empty.dmg"
  appcast "https://zs.tongbu.com/mac/"
  name "Tongbu"
  desc "Mobile phone management tool"
  homepage "https://zs.tongbu.com/mac/"

  app "Tongbu.app"
end
