cask "yakit" do
  arch arm: "arm64", intel: "x64"

  version "1.4.8-0703"
  sha256 arm:   "24376c410fbb0c082864a6d0037973dd4ac978534b9c4e7e1279bc1ca1193c2a",
         intel: "a493e0a0dea627da533bc650047e2386128158949b598d9c5e9527db732ed6b5"

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
