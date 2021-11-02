cask "x-swiftformat" do
  version "1.1.2"
  sha256 "aeb6a67df929a83da3f632599562e0687c2f935fc6e116091a3cde627c73543c"

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
