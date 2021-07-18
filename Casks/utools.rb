cask "utools" do
  version "2.0.7"
  sha256 "e27d1e8e272df5a55af8bee37dae8b6e3a3ea6ccbc89536abd7e269096e9779b"

  url "https://publish.u-tools.cn/version2/uTools-#{version}.dmg",
      verified: "publish.u-tools.cn/"
  name "uTools"
  desc "Plug-in productivity tool set"
  homepage "https://u.tools/index.html"

  livecheck do
    url "https://publish.u-tools.cn/version2/public-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "uTools.app"

  zap trash: [
    "~/Library/Application Support/uTools",
    "~/Library/Logs/uTools",
  ]
end
