cask "tongbu" do
  version "3.1.2.0"
  sha256 "3183299c01064b92d77cceb395e8f72cb9688987363a2390f5bd2bd2ab568b17"

  url "https://qd.tongbu.com/qd/tbzsqd/zsmac_#{version}/%E5%90%8C%E6%AD%A5%E5%8A%A9%E6%89%8B_mac_v#{version}_empty.dmg"
  appcast "https://zs.tongbu.com/mac/"
  name "Tongbu"
  desc "Mobile phone management tool"
  homepage "https://zs.tongbu.com/mac/"

  app "Tongbu.app"
end
