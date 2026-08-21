cask "windrose" do
  version "0.5.0"
  sha256 "4c6a083f2b3b062568126bcf511c7cede16f5a9981661b22da4de2f31fbbc7a9"

  url "https://updates.index9.dev/windrose/releases/Windrose-#{version}.dmg",
      verified: "updates.index9.dev/windrose/"
  name "Windrose"
  desc "Fan control for Apple Silicon Macs"
  homepage "https://index9.dev/windrose"

  livecheck do
    url "https://updates.index9.dev/windrose/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Windrose.app"

  uninstall quit: "dev.index9.windrose"
end
