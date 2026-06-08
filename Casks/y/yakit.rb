cask "yakit" do
  arch arm: "arm64", intel: "x64"

  version "1.4.7-0605"
  sha256 arm:   "a6f0ec0a1203edacc4e18893af9b61bcd30ca7fb661d054b7acd20eaa341f1ea",
         intel: "ac1af8204af50f29d97f743e77fb3362967b3fc213aa93da2aff94e7c362e193"

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
