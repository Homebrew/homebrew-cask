cask "typeless" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "latest"

  version "0.9.3"
  sha256 arm:   "5b0663c8ea71df45bbe93188b22584940108d055f7fa4d3532a1226884ec92cc",
         intel: "09595cbba09d6ce92739e23254b0d5948dc556753cd5b3f9ff7ce6ce9e330278"

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
