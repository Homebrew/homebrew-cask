cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.12.1"
  sha256 arm:   "4776281e14df3c08d0e40c1346309c19065d2c2326301749cd59cfa55bc68e75",
         intel: "bb4769e9ec05b4eaab915cc2263d221dff72c798ca88200e3800f0a4afa34521"

  url "https://github.com/vicanso/zedis/releases/download/v#{version}/Zedis-#{arch}.dmg"
  name "Zedis"
  desc "Redis GUI built with Rust and GPUI"
  homepage "https://github.com/vicanso/zedis"

  depends_on macos: :monterey

  app "Zedis.app"

  zap trash: [
    "~/Library/Application Support/com.bigtree.zedis",
    "~/Library/Preferences/com.bigtree.zedis.plist",
  ]
end
