cask "yakit" do
  arch arm: "arm64", intel: "x64"

  version "1.4.7-0515"
  sha256 arm:   "87d2f264fd1b7543bf2c2aa94147e7b0581e64b392d7d393557792e4f1222e33",
         intel: "bbc8e3d4a0de9d601a16de37563d0dbb2538cafb5d21c28a47882bda1c7b1c3a"

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
