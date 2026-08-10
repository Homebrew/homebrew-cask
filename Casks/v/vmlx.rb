cask "vmlx" do
  version "1.6.26"
  sha256 "3fe81e701ed1c0abcaad06264ac78f109bc8a7fd25e5f883d2b792a7a319463e"

  url "https://github.com/jjang-ai/mlxstudio/releases/download/v#{version}/vMLX-#{version}-sequoia-arm64.dmg",
      verified: "github.com/jjang-ai/mlxstudio/"
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
