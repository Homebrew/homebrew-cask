cask "yakit" do
  arch arm: "arm64", intel: "x64"

  version "1.4.7-0618"
  sha256 arm:   "f1739c528fed4a8dfbc703fd9b8db38797722f096f101b8fce1f5dc9f8a288cd",
         intel: "39bae9fad6da8d0352ea1a19bb5edd3bd0992e42ad5b649fe5a2255bd5f3f26d"

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
