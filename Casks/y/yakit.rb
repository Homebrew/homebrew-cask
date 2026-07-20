cask "yakit" do
  arch arm: "arm64", intel: "x64"

  version "1.4.8-0717"
  sha256 arm:   "bfc0114ccfbe1f29e3acb3c760c479467dcdca1fe2dff256cfa817fa33cc1a7c",
         intel: "edccc9a482858160645c3cd5f4b61800dded63df3ed6d3d5585e4792955f10e0"

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
