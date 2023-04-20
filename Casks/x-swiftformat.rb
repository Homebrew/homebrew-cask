cask "x-swiftformat" do
  version "1.3"
  sha256 "2e7d203e862a5ebb78b934bbf20949cfdceedab9db200edde04f328eefff2d6e"

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
