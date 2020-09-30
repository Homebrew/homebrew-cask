cask "x-swiftformat" do
  version "1.0.3"
  sha256 "5045455fdef959afedbd38533a57d0facbe7a96023a2a73da2a607869eaad87d"

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
