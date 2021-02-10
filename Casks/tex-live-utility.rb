cask "tex-live-utility" do
  version "1.41"
  sha256 "a4cad390cfb20f767fc8eb3a9cd288c981f3a51db8cd0fa328740b95580e767b"

  url "https://github.com/amaxwell/tlutility/releases/download/#{version}/TeX.Live.Utility.app-#{version}.dmg"
  appcast "https://github.com/amaxwell/tlutility/releases.atom"
  name "TeX Live Utility"
  desc "Graphical user interface for TeX Live Manager"
  homepage "https://github.com/amaxwell/tlutility"

  auto_updates true

  app "TeX Live Utility.app"

  zap trash: [
    "~/Library/Application Support/TeX Live Utility",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/TeX Live Utility Help*",
  ]
end
