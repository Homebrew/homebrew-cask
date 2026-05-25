cask "yakit" do
  arch arm: "arm64", intel: "x64"

  version "1.4.7-0525"
  sha256 arm:   "ab6e1ce3a9a4018377000824d1f960f47113a7c705f14f129875f6702502fd24",
         intel: "8ca6a0bbc1452907dd2bd8d08b9352d5b881f0071bb70a5c4c6e488edd0ecec6"

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
