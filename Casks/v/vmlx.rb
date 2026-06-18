cask "vmlx" do
  version "1.5.62"
  sha256 "8ca1b94d3a8f04a601ed14f29a4d37c2586d14eb10506da5ada28a2a38943bce"

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
