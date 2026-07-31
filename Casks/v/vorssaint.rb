cask "vorssaint" do
  version "3.2.0"
  sha256 "a4d5b5dac0c7135d17a5124774a66748a1ecf69af3a332b9070c54fdaedd5dfa"

  url "https://github.com/vorssaint/vorssaint-utils/releases/download/v#{version}/Vorssaint-#{version}.dmg"
  name "Vorssaint"
  desc "Menu bar toolkit with keep-awake, system monitor and volume mixer"
  homepage "https://github.com/vorssaint/vorssaint-utils"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Vorssaint.app"

  uninstall quit: "com.vorssaint.utils"

  zap trash: [
    "~/Library/Application Support/com.vorssaint.utils",
    "~/Library/Caches/com.vorssaint.utils",
    "~/Library/HTTPStorages/com.vorssaint.utils",
    "~/Library/Preferences/com.vorssaint.utils.plist",
    "~/Library/Saved Application State/com.vorssaint.utils.savedState",
  ]
end
