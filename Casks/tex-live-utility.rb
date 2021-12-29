cask "tex-live-utility" do
  version "1.49"
  sha256 "5a5256f3e43203f59f3d55120b9faa4080ce7bed19a14bdf76e065f72d692907"

  url "https://github.com/amaxwell/tlutility/releases/download/#{version}/TeX.Live.Utility.app-#{version}.zip"
  name "TeX Live Utility"
  desc "Graphical user interface for TeX Live Manager"
  homepage "https://github.com/amaxwell/tlutility"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "TeX Live Utility.app"

  zap trash: [
    "~/Library/Caches/com.googlecode.mactlmgr.tlu",
    "~/Library/Application Support/TeX Live Utility",
    "~/Library/Preferences/com.googlecode.mactlmgr.tlu.plist",
    "~/Library/Saved Application State/com.googlecode.mactlmgr.tlu.savedState",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/TeX Live Utility Help*",
  ]
end
