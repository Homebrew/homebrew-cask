cask "v2rayn" do
  arch arm: "arm64", intel: "64"

  version "7.16.6"
  sha256 arm:   "899bef66256430db86968a0292fc6e4e28eab96cc9e84014e2c6e02e4abdd21e",
         intel: "a088a64b19603860ac62d9be55d16cb1cc39a68997f64896d695847f6f56f644"

  url "https://github.com/2dust/v2rayN/releases/download/#{version}/v2rayN-macos-#{arch}.dmg"
  name "v2rayN"
  desc "GUI client for Windows and macOS, support Xray core and sing-box-core"
  homepage "https://github.com/2dust/v2rayN"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "v2rayN.app"

  caveats <<~EOS
    If you encounter a "damaged" error when opening the app, please run:
      xattr -cr #{appdir}/v2rayN.app
  EOS

  zap trash: [
    "~/Library/Application Support/v2rayN",
    "~/Library/Preferences/2dust.v2rayN.plist"
  ]
end
