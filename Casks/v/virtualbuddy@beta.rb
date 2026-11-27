cask "virtualbuddy@beta" do
  version "2.3,451"
  sha256 "fc8738d1f5339fe212f762fcffb7b2c4f0961a8752eea0ae7806f94ee1fa0a30"

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
  generate_completions_from_executable "#{appdir}/VirtualBuddy.app/Contents/MacOS/vctool",
                                       "--generate-completion-script"

  zap trash: [
    "~/Library/Application Support/VirtualBuddy",
    "~/Library/Caches/codes.rambo.VirtualBuddy",
    "~/Library/HTTPStorages/codes.rambo.VirtualBuddy",
    "~/Library/Preferences/codes.rambo.VirtualBuddy.plist",
  ]
end
