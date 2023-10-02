cask "x-swiftformat" do
  version "2.0"
  sha256 "ebf9a23486607273e4c7d2f502963953b0c30e18927fd0715d376baa4cf492de"

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
