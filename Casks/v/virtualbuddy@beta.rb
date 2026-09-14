cask "virtualbuddy@beta" do
  version "2.2,417"
  sha256 "095da132321ac806c3fffe7e01c10f14231601b45b9193d996750ea92f9ff248"

  url "https://su.virtualbuddy.app/beta/VirtualBuddy_v#{version.csv.first}-#{version.csv.second}.dmg"
  name "VirtualBuddy"
  desc "Virtualization tool"
  homepage "https://github.com/insidegui/VirtualBuddy"

  livecheck do
    url "https://su.virtualbuddy.app/appcast.xml?channel=beta"
    strategy :sparkle
  end

  conflicts_with cask: "virtualbuddy"
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "VirtualBuddy.app"
  binary "#{appdir}/VirtualBuddy.app/Contents/MacOS/vctool", target: "vctool"

  zap trash: [
    "~/Library/Application Support/VirtualBuddy",
    "~/Library/HTTPStorages/codes.rambo.VirtualBuddy",
    "~/Library/Preferences/codes.rambo.VirtualBuddy.plist",
  ]
end
