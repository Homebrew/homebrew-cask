cask "yakit" do
  arch arm: "arm64", intel: "x64"

  version "1.4.7-0522"
  sha256 arm:   "cf7013cfe946c3473ae3186e16de72886b24856309c0dde520a2a33a73c2c18c",
         intel: "4e5458bc0a218ee14386fafb6df1f56dca8f0719ba9af65fce1f4d5ab43d48ef"

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
