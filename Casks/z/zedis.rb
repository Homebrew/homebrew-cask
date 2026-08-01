cask "zedis" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.6.6"
  sha256 arm:   "64455efbb8c83dd99edbad94cbe6376ade928e0550a622f39fd2286061919369",
         intel: "2d309c305853cadfd9880d2ebfe700f60e4fbd41bc5fc1ec5921ecf328869eef"

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
