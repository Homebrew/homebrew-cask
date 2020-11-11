cask "x-swiftformat" do
  version "1.0.3"
  sha256 "0e15354a67c6a2c490e1910fe7ebc3b4cb6ad20aac65c0c5a056a53611927847"

  url "https://github.com/ruiaureliano/X-SwiftFormat/releases/download/#{version}/x-swiftformat_#{version}.zip"
  appcast "https://github.com/ruiaureliano/X-SwiftFormat/releases.atom"
  name "X-SwiftFormat"
  homepage "https://github.com/ruiaureliano/X-SwiftFormat"

  depends_on macos: ">= :catalina"

  app "X-SwiftFormat.app"

  zap trash: [
    "~/Library/Preferences/com.ruiaureliano.xswiftformat.plist",
    "~/Library/Caches/com.ruiaureliano.xswiftformat",
    "~/Library/Containers/com.ruiaureliano.xswiftformat",
  ]
end
