cask "tex-live-utility" do
  version "1.47"
  sha256 "20eea6c96d6ee9282d99e1842a37663ae9546c1ebde6931ddf25eed58794b342"

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
