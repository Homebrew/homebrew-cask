cask "utools" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "2.6.2"

  if Hardware::CPU.intel?
    sha256 "bcc2dda2b7d737e3ee48f94bca39780d3c267eb66334bb2018da65902c36a46d"
  else
    sha256 "6d32fd8b6b4244e50c20a5e6b27742593f8e322294ff56e32669a3a95546535e"
  end

  url "https://publish.u-tools.cn/version2/uTools-#{version}#{arch}.dmg",
      verified: "publish.u-tools.cn/"
  name "uTools"
  desc "Plug-in productivity tool set"
  homepage "https://u.tools/index.html"

  livecheck do
    url :homepage
    regex(/uTools[._-]v?(\d+(?:\.\d+)*)\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "uTools.app"

  zap trash: [
    "~/Library/Application Support/uTools",
    "~/Library/Logs/uTools",
    "~/Library/Preferences/org.yuanli.utools.plist",
  ]
end
