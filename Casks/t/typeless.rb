cask "typeless" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "latest"

  version "1.2.0"
  sha256 arm:   "21a42c8879ee6901804be08ce2440539a5aa8c4dd692cd9d1e8dd1c805ffb6dd",
         intel: "b2a344946c5f78db3b745858ff24b6be68c09593a1293bf47ae20ed0a73bb935"

  url "https://typeless-static.com/desktop-release/Typeless-#{version}-#{arch}.dmg",
      verified: "typeless-static.com/"
  name "Typeless"
  desc "AI voice dictation that turns speech into polished text"
  homepage "https://typeless.com/"

  livecheck do
    url "https://typeless-static.com/desktop-release/#{livecheck_arch}-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Typeless.app"

  zap trash: [
    "~/Library/Application Support/typeless",
    "~/Library/Caches/typeless",
    "~/Library/Preferences/com.typeless.plist",
  ]
end
