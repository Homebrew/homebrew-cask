cask "vmlx" do
  version "1.5.50"
  sha256 "d898085173011fd287a6ef77d9d608975f6f4c4b0632fe0f7366044f6bda8270"

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
