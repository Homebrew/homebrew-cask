cask "tex-live-utility" do
  version "1.40"
  sha256 "631fc032db56fd51edc8d2c39aa8619f4cd8a6d128762665c181b3f6834bb8e9"

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
