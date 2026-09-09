cask "tungsten-edge" do
  version "0.11.3"
  sha256 "b78aefc294fb8597940e78841f92b667373795c0d80f844ae09568dee10aac1f"

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
