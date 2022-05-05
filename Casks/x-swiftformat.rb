cask "x-swiftformat" do
  version "1.1.3"
  sha256 "22a5b8b2af634d810c90f7dd74902af53c3130fc91271c4d121a298cda2c9eb7"

  url "https://github.com/ruiaureliano/X-SwiftFormat/releases/download/#{version}/x-swiftformat_#{version}.zip"
  name "X-SwiftFormat"
  desc "Xcode extension to format Swift code"
  homepage "https://github.com/ruiaureliano/X-SwiftFormat"

  depends_on macos: ">= :catalina"

  app "X-SwiftFormat.app"

  zap trash: [
    "~/Library/Caches/com.ruiaureliano.xswiftformat",
    "~/Library/Containers/com.ruiaureliano.xswiftformat",
    "~/Library/Preferences/com.ruiaureliano.xswiftformat.plist",
  ]
end
