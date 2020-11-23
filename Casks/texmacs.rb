cask "texmacs" do
  version "1.99.16"
  sha256 "50961fb519a2f663550bf5a6d963c425e150737a0603d77e59a3fef29a16bbce"

  url "https://www.texmacs.org/Download/ftp/tmftp/macos/TeXmacs-#{version}.dmg"
  appcast "https://ftp.texmacs.org/TeXmacs/appcast/macos.xml"
  name "GNU TeXmacs"
  homepage "https://www.texmacs.org/"

  app "TeXmacs.app"

  zap trash: "~/.TeXmacs"
end
