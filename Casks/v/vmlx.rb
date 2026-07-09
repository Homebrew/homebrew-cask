cask "vmlx" do
  version "1.6.3"
  sha256 "eda146140d76e6d19fd98b1d7143c34678ee0a3c4aefdbd97b615420436efeca"

  url "https://github.com/jjang-ai/vmlx/releases/download/v#{version}/vMLX-#{version}-sequoia-arm64.dmg",
      verified: "github.com/jjang-ai/vmlx/"
  name "vMLX"
  desc "Run local AI models on Apple Silicon"
  homepage "https://mlx.studio/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "vMLX.app"

  uninstall quit: "net.vmlx.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.vmlx.app.sfl*",
    "~/Library/Application Support/vmlx",
    "~/Library/Preferences/net.vmlx.app.plist",
  ]
end
