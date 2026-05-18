cask "yakit" do
  arch arm: "arm64", intel: "x64"

  version "1.4.7-0518"
  sha256 arm:   "adf014087f895848e38f193de6f06a375b0032bcab6dec6385162aa15a6d42a3",
         intel: "a4f52710d7b770468f97367f14151258ce1865cf3e1c1b580c301ff6fc997735"

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
