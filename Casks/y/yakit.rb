cask "yakit" do
  arch arm: "arm64", intel: "x64"

  version "1.4.7-0612"
  sha256 arm:   "f0f9e3f03ffb019d9e934d751278777af526927b24802facc854777eda560443",
         intel: "63312a7e8ce9d66d420d4ac51609ecac5ccfaa823083ce8ea9610b16f7ff64a2"

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
