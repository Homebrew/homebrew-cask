cask "yakit" do
  arch arm: "arm64", intel: "x64"

  version "1.4.7-0509"
  sha256 arm:   "a44f58dcb50bdc2511ef8cda8c8aaa2ace08c8fae30b73c5257d203d078404f8",
         intel: "8d1c609a114cd9cd796b006ba64b2c16f7dee1fd2cf2310ba45beb3ad985ccb7"

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
    "~/Library/Preferences/io.yaklang.yakit.plist",
    "~/Library/Saved Application State/io.yaklang.yakit.savedState",
  ]
end
