cask "yakit" do
  arch arm: "arm64", intel: "x64"

  version "1.4.7-0529"
  sha256 arm:   "2d724206598435c52ddaed7f70134df4b90db2317bdc54001f944a4a7287aea1",
         intel: "5bf46421a4e38e4ee0f68346e3ca48235fe3b75c7c72bdfe236913d598922657"

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
