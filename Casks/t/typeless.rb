cask "typeless" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "latest"

  version "1.6.0"
  sha256 arm:   "cf46cdc857e32ce514c5c37c67b7d2b82b75ebcd86dc5e329a63c2c90ad7dd9c",
         intel: "f68ed5d82bdd2d55e469724f4026cd35c271e171d4312f737070bb128f64ff01"

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
  depends_on macos: :big_sur

  app "Typeless.app"

  zap trash: [
    "~/Library/Application Support/typeless",
    "~/Library/Caches/typeless",
    "~/Library/Preferences/com.typeless.plist",
  ]
end
