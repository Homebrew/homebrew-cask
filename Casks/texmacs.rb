cask "texmacs" do
  version "1.99.16"
  sha256 "50961fb519a2f663550bf5a6d963c425e150737a0603d77e59a3fef29a16bbce"

  url "https://www.texmacs.org/Download/ftp/tmftp/macos/TeXmacs-#{version}.dmg"
  appcast "https://www.texmacs.org/tmweb/download/macosx.en.html"
  name "GNU TeXmacs"
  homepage "https://www.texmacs.org/"

  app "TeXmacs.app"

  zap trash: "~/.TeXmacs"
end
