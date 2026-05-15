cask "typeless" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "latest"

  version "1.4.1"
  sha256 arm:   "66aa992bc4edfb64bf58d4ff8ef6763d01f11bd74b2704d1be7e820a5d270715",
         intel: "68acfb0fc6243f742a7345d62079f37d7a5591117a7ef97a26e92e27668535d5"

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
