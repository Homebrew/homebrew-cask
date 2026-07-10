cask "yakit" do
  arch arm: "arm64", intel: "x64"

  version "1.4.8-0711"
  sha256 arm:   "a8b39af6a93bbde29772b4610f20a986781ef62643e12b9f6338b57012afaad5",
         intel: "850b27ca149a770711749296075056c06e235bac4bf908b02bad7769a8a79b52"

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
