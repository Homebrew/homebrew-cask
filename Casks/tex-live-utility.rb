cask "tex-live-utility" do
  version "1.52"
  sha256 "479c0895466580f98e1fc63628eb4f533773f90e85ee48fa70e2edb0307684a2"

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
