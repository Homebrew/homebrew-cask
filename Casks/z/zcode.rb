cask "zcode" do
  arch arm: "arm64", intel: "x64"

  version "3.2.4"
  sha256 arm:   "7755502e3dd0daa794e6be44290418c7890dfe9f7d875948aee2a93c1ae33e28",
         intel: "bcf04a1da7ab5bcd50c18dff7ad9df121aaf404110610e25d291150fc34c3a17"

  url "https://cdn-zcode.z.ai/zcode/electron/releases/#{version}/ZCode-#{version}-mac-#{arch}.dmg"
  name "ZCode"
  desc "AI-assisted development environment"
  homepage "https://zcode.z.ai/"

  livecheck do
    url :homepage
    regex(%r{href="https://cdn-zcode\.z\.ai/.*?ZCode[._-]v?(\d+(?:\.\d+)+)[._-]mac[._-]#{arch}\.dmg"}i)
  end

  auto_updates true
  depends_on macos: :monterey

  app "ZCode.app"

  zap trash: [
    "~/Library/Application Support/ZCode",
    "~/Library/Caches/@zcodedesktop-updater",
    "~/Library/Preferences/dev.zcode.app.plist",
    "~/Library/Services/Open in ZCode.workflow",
  ]
end
