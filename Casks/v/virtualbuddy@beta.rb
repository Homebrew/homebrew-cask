cask "virtualbuddy@beta" do
  version "2.0,271"
  sha256 "42db8417d40ee4cd6bafff7a20337ef9244b627d7b589842c743682cc4ceeaef"

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
  depends_on macos: ">= :ventura"

  app "VirtualBuddy.app"

  zap trash: [
    "~/Library/Application Support/VirtualBuddy",
    "~/Library/HTTPStorages/codes.rambo.VirtualBuddy",
    "~/Library/Preferences/codes.rambo.VirtualBuddy.plist",
  ]
end
