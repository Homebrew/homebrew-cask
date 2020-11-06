cask "tex-live-utility" do
  version "1.36"
  sha256 "893ecc7d05b06e62a602399e59a4b433c787438e5921cf05c406efece057c7d4"

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
