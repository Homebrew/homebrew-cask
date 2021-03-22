cask "x-swiftformat" do
  version "1.1"
  sha256 "3a0826887bb3df7012c118e82b785af2a7ccb028180db5e0086b112fe3f56984"

  url "https://github.com/ruiaureliano/X-SwiftFormat/releases/download/#{version}/x-swiftformat_#{version}.zip"
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
