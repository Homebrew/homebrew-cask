cask "yakit" do
  arch arm: "arm64", intel: "x64"

  version "1.4.8-07124"
  sha256 arm:   "f1cbe92c8ed22a99486f0ee19f790a629f5f768af39d28a1fff43ff8104c35ab",
         intel: "bf9bad6fa7252ef2c931e400807f768cf9aed639cc6dfc374201f8d68967c56a"

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
