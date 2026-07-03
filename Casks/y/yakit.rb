cask "yakit" do
  arch arm: "arm64", intel: "x64"

  version "1.4.7-0630"
  sha256 arm:   "77943ee30c03ab9bdbf8e5c708391de523a31e423a42b5497fdbe126c2790fac",
         intel: "f52946b1f5b9f6d71e25530f25b59eb1a84874bbff9f1e3f7855b3b13b5639ea"

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
