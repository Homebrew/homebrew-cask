cask "yakit" do
  arch arm: "arm64", intel: "x64"

  version "1.4.8-0919"
  sha256 arm:   "79b92c7cd91baa9f9d446f48c7395e20b6831dd788e502292e47cd6ea117df42",
         intel: "008c8f4742e8b546b591b9b4436c185acc712842196b3bb62224e25e4c6fb2ad"

  url "https://github.com/yaklang/yakit/releases/download/v#{version}/Yakit-#{version}-darwin-#{arch}.dmg"
  name "Yakit"
  desc "Cybersecurity platform"
  homepage "https://github.com/yaklang/yakit"

  livecheck do
    url :url
    regex(/^v?(\d+(?:[.-]\d+)+)$/)
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
