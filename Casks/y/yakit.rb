cask "yakit" do
  arch arm: "arm64", intel: "x64"

  version "1.4.8-0807"
  sha256 arm:   "aa236ef28e1b23c286fb9338db246276a1f3dadb335b70518fbd0f822f84de71",
         intel: "ae51c5581c914fc5a321091f88d1ef85eb256aec1f4f126bafa93e95529748f2"

  url "https://github.com/yaklang/yakit/releases/download/v#{version}/Yakit-#{version}-darwin-#{arch}.dmg"
  name "Yakit"
  desc "Cybersecurity platform"
  homepage "https://github.com/yaklang/yakit"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+-\d{4})$/)
  end

  depends_on macos: :catalina

  app "Yakit.app"

  zap trash: [
    "~/Library/Application Support/yakit",
    "~/Library/Preferences/io.yaklang.yakit.plist",
    "~/Library/Saved Application State/io.yaklang.yakit.savedState",
  ]
end
