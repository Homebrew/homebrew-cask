cask "tungsten-edge" do
  version "0.11.6"
  sha256 "0ca082a3fdd4e62f96b0fe90483155cd02cb7853f53e95058ce170b01df27fc7"

  url "https://tungstenedge.app/download/Tungsten-Edge-#{version}.zip"
  name "Tungsten Edge"
  name "钨极"
  desc "Window-oriented taskbar that replaces the Dock"
  homepage "https://tungstenedge.app/"

  livecheck do
    url "https://tungstenedge.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

  app "Tungsten Edge.app"

  zap trash: [
    "~/Library/Application Support/com.caye.macosdockcc.v2",
    "~/Library/Caches/com.caye.macosdockcc.v2",
    "~/Library/HTTPStorages/com.caye.macosdockcc.v2",
    "~/Library/Logs/com.caye.macosdockcc.v2",
    "~/Library/Preferences/com.caye.macosdockcc.v2.plist",
    "~/Library/WebKit/com.caye.macosdockcc.v2",
  ]
end
