cask "virtualbuddy" do
  version "1.2.2,10"
  sha256 "953428b48ac48652edf8935a0d7f0042aaaa2f8ca7303f86add3ceaedfb9c1cf"

  url "https://github.com/insidegui/VirtualBuddy/releases/download/#{version.csv.first}/VirtualBuddy_v#{version.csv.first}-#{version.csv.second}.dmg"
  name "VirtualBuddy"
  desc "Virtualization tool"
  homepage "https://github.com/insidegui/VirtualBuddy"

  livecheck do
    skip "No reliable way to get version info"
  end

  depends_on arch: :arm64
  depends_on macos: ">= :monterey"

  app "VirtualBuddy.app"

  zap trash: [
    "~/Library/Application Support/VirtualBuddy",
    "~/Library/HTTPStorages/codes.rambo.VirtualBuddy",
    "~/Library/Preferences/codes.rambo.VirtualBuddy.plist",
  ]
end
