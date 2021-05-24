cask "x-swiftformat" do
  version "1.1.1"
  sha256 "9d086661b9a1b096114dcac67b6664c3d63a3dced1294949fe9bfa3094f895b1"

  url "https://github.com/ruiaureliano/X-SwiftFormat/releases/download/#{version}/x-swiftformat_#{version}.zip"
  name "X-SwiftFormat"
  desc "Xcode extension to format Swift code"
  homepage "https://github.com/ruiaureliano/X-SwiftFormat"

  depends_on macos: ">= :catalina"

  app "X-SwiftFormat.app"

  zap trash: [
    "~/Library/Preferences/com.ruiaureliano.xswiftformat.plist",
    "~/Library/Caches/com.ruiaureliano.xswiftformat",
    "~/Library/Containers/com.ruiaureliano.xswiftformat",
  ]
end
