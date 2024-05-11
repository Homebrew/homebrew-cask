cask "vesktop" do
  version "1.5.2"
  sha256 on_arch_conditional arm:   "37dab286677c3a07d3488631be6d3112159e5ab16641737a3dbbfb1b77eb286a",
                             intel: "feed86e6ff7cf850087e0ed432ae6f5059983b64e3e5988068badda9474e300a"

  url on_arch_conditional arm:   "https://github.com/Vencord/Vesktop/releases/download/v#{version}/Vesktop-#{version}-arm64.dmg",
                          intel: "https://github.com/Vencord/Vesktop/releases/download/v#{version}/Vesktop-#{version}.dmg"
  name "Vesktop"
  desc "Gives you the performance of web Discord and the comfort of Discord Desktop"
  homepage "https://github.com/Vencord/Vesktop"

  livecheck do
    url "https://github.com/Vencord/Vesktop.git"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Vesktop.app"

  zap trash: [
    "/private/var/folders/2k/qp_mlc_17rl8lp1rljgkdbfm0000gn/C/dev.vencord.vesktop",
    "/private/var/folders/2k/qp_mlc_17rl8lp1rljgkdbfm0000gn/C/dev.vencord.vesktop.helper.GPU",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.vencord.vesktop.sfl*",
    "~/Library/Application Support/vesktop",
    "~/Library/Logs/Deezer",
    "~/Library/Preferences/dev.vencord.vesktop.plist",
    "~/Library/Saved Application State/dev.vencord.vesktop.savedState",
  ]
end
