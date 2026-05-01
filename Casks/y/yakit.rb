cask "yakit" do
  arch arm: "arm64", intel: "x64"

  version "1.4.7-0429"
  sha256 arm:   "b00f2f794931ff92fb3df936f8badf55dc748667a1dafd28c82dbc6d1d5c9057",
         intel: "8c3bee607a1b9c6f83a00407885bc081bb0e31f51d36567e4a944ca50879327a"

  url "https://github.com/yaklang/yakit/releases/download/v#{version}/Yakit-#{version}-darwin-#{arch}.dmg"
  name "Yakit"
  desc "Cybersecurity platform"
  homepage "https://github.com/yaklang/yakit"

  livecheck do
    url :url
    regex(/^v?(\d+(?:[.-]\d+)+)$/)
  end

  depends_on macos: ">= :catalina"

  app "Yakit.app"

  zap trash: [
    "~/Library/Application Support/yakit",
    "~/Library/Preferences/com.yaklang.yakit.plist",
    "~/Library/Saved Application State/com.yaklang.yakit.savedState",
  ]
end
