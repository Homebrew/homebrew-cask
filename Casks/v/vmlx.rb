cask "vmlx" do
  version "1.5.56"
  sha256 "a7148d42e27ee8eccb428a460bc4aa643b227a25ef394aed7dbebe3f3763fd5c"

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
