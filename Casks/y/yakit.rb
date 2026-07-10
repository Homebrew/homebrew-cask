cask "yakit" do
  arch arm: "arm64", intel: "x64"

  version "1.4.8-0710"
  sha256 arm:   "ed8f63de57a0e910c16c7313baae8fcf967002de04b79ece86e5a3b6d5aeeaa9",
         intel: "e20b871cb65d3cb9c2c0609d7aa8d3a996ab5ec618a38ec7c4f2c7bc63eec69a"

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
