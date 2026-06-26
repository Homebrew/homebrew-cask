cask "yakit" do
  arch arm: "arm64", intel: "x64"

  version "1.4.7-0626"
  sha256 arm:   "77cd350cef7452ba151b72d31cbf909db99d8f8fdc90c95b8919fadf677a8273",
         intel: "37b65f0a1cddb58de9a6bb70eed888f43b7152d475f5133f0faf21414d43a877"

  url "https://github.com/yaklang/yakit/releases/download/v#{version}/Yakit-#{version}-darwin-#{arch}.dmg"
  name "Yakit"
  desc "Cybersecurity platform"
  homepage "https://github.com/yaklang/yakit"

  livecheck do
    url :url
    regex(/^v?(\d+(?:[.-]\d+)+)$/)
  end

  depends_on macos: :catalina

  app "Yakit.app"

  zap trash: [
    "~/Library/Application Support/yakit",
    "~/Library/Preferences/io.yaklang.yakit.plist",
    "~/Library/Saved Application State/io.yaklang.yakit.savedState",
  ]
end
