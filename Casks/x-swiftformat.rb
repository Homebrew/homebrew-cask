cask "x-swiftformat" do
  version "1.2"
  sha256 "00862e3f761217e4dfa7d8ac042bc085c530eb1375bccca7f765896f0c523b21"

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
