cask "yakit" do
  arch arm: "arm64", intel: "x64"

  version "1.4.9-1113"
  sha256 arm:   "08f176d234f3c6c655afee8e5f4b81220ebdc926cdb5556ce3fec414e4f07067",
         intel: "03f997cc29a3aee527d027c78041e52657b689862ab65630907e90008114c754"

  url "https://github.com/yaklang/yakit/releases/download/v#{version}/Yakit-#{version}-darwin-#{arch}.dmg"
  name "Yakit"
  desc "Cybersecurity platform"
  homepage "https://github.com/yaklang/yakit"

  livecheck do
    url :url
    regex(/^v?(\d+(?:[.-]\d+)+)$/i)
  end

  depends_on :macos

  app "Yakit.app"

  uninstall quit: "io.yaklang.yakit"

  zap trash: [
    "~/.yakit",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.yaklang.yakit.sfl*",
    "~/Library/Application Support/yakit",
    "~/Library/Preferences/io.yaklang.yakit.plist",
    "~/Library/Saved Application State/io.yaklang.yakit.savedState",
  ]
end
