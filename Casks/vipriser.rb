cask "vipriser" do
  version :latest
  sha256 :no_check

  url "https://onflapp.github.io/blog/releases/vipriser/VipRiser.zip"
  appcast "https://onflapp.github.io/blog/releases/vipriser/appcast.xml"
  name "VipRiser"
  desc "Produce a PDF from any application that can print"
  homepage "https://onflapp.github.io/blog/pages/vipriser-pdf-ops/vipriser.html"

  app "VipRiser.app"
end
