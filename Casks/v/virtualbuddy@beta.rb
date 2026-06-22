cask "virtualbuddy@beta" do
  version "2.2,366"
  sha256 "34c15415df5efdb8e0b40a63a1b00cce630d13f4b43d0c3e1ff258dd33779e2a"

  url "https://su.virtualbuddy.app/beta/VirtualBuddy_v#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "su.virtualbuddy.app/"
  name "VirtualBuddy"
  desc "Virtualization tool"
  homepage "https://github.com/insidegui/VirtualBuddy"

  livecheck do
    url "https://su.virtualbuddy.app/appcast.xml?channel=beta"
    strategy :sparkle
  end

  conflicts_with cask: "virtualbuddy"
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "VirtualBuddy.app"
  binary "#{appdir}/VirtualBuddy.app/Contents/MacOS/vctool", target: "vctool"

  zap trash: [
    "~/Library/Application Support/VirtualBuddy",
    "~/Library/HTTPStorages/codes.rambo.VirtualBuddy",
    "~/Library/Preferences/codes.rambo.VirtualBuddy.plist",
  ]
end
