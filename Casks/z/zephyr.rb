cask "zephyr" do
  arch arm: "aarch64", intel: "x64"

  version "2.4.3"
  sha256 arm:   "bc4d35240947aacda2d4d66237c90a28fcb5a78455503a7480cfacbcde7bb0c9",
         intel: "786602bc3ae00878909cce6f9251ae913465641f9dbc39d235ed6b77dc305358"

  url "https://github.com/Juwan-Hwang/Zephyr/releases/download/v#{version}/Zephyr_#{version}_#{arch}-full.dmg"
  name "Zephyr"
  desc "GUI client for Mihomo"
  homepage "https://github.com/Juwan-Hwang/Zephyr"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Zephyr.app"

  zap trash: [
    "~/Library/Application Support/Zephyr",
    "~/Library/Caches/io.github.juwan_hwang.zephyr",
    "~/Library/Preferences/io.github.juwan_hwang.zephyr.plist",
    "~/Library/Saved Application State/io.github.juwan_hwang.zephyr.savedState",
  ]
end
