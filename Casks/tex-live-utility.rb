cask "tex-live-utility" do
  version "1.53"
  sha256 "64caa374c9a34d0b7a513248aa42cf4c9b0dff207010ee4b4cd2fd5b56a956df"

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
    "~/Library/Application Support/TeX Live Utility",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/TeX Live Utility Help*",
    "~/Library/Caches/com.googlecode.mactlmgr.tlu",
    "~/Library/Preferences/com.googlecode.mactlmgr.tlu.plist",
    "~/Library/Saved Application State/com.googlecode.mactlmgr.tlu.savedState",
  ]
end
