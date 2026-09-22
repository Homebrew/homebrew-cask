cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.11.0"
  sha256 arm:   "7c006144e9ef1ae603e0e2af6a30455aac9f8e28db44558c22f1d338b853b55a",
         intel: "343f65ed0e916f9f5679cc2073e5dc29841b15ad485ef7865620ce5948be7439"

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
