cask "vmlx" do
  version "1.6.79"
  sha256 "f4323580efa4ccc403c12f6a2384a992592c7369c88f2aeed4d966ffb09b17f6"

  url "https://github.com/jjang-ai/mlxstudio/releases/download/v#{version}/vMLX-#{version}-sequoia-arm64.dmg"
  name "vMLX"
  desc "Run local AI models on Apple Silicon"
  homepage "https://mlx.studio/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "vMLX.app"

  uninstall quit: "net.vmlx.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.vmlx.app.sfl*",
    "~/Library/Application Support/vmlx",
    "~/Library/Preferences/net.vmlx.app.plist",
  ]
end
