cask "virtualbuddy" do
  version "2.1,325"
  sha256 "6ed17e8d7245931fd405c419321ace7ef9333fe2e3d59b3a7f78e34fcbe628b6"

  url "https://su.virtualbuddy.app/VirtualBuddy_v#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "su.virtualbuddy.app/"
  name "VirtualBuddy"
  desc "Virtualization tool"
  homepage "https://github.com/insidegui/VirtualBuddy"

  livecheck do
    url "https://su.virtualbuddy.app/appcast.xml?channel=release"
    strategy :sparkle
  end

  auto_updates true
  conflicts_with cask: "virtualbuddy@beta"
  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "VirtualBuddy.app"
  binary "#{appdir}/VirtualBuddy.app/Contents/MacOS/vctool", target: "vctool"

  zap trash: [
    "~/Library/Application Support/VirtualBuddy",
    "~/Library/Caches/codes.rambo.VirtualBuddy",
    "~/Library/HTTPStorages/codes.rambo.VirtualBuddy",
    "~/Library/Preferences/codes.rambo.VirtualBuddy.plist",
  ]
end
