cask "vipriser" do
  version "3.4"
  sha256 "5cdde06b61ab4a7f1866d956685544545ed4f13556b6fb19498c8d4d90f4bfb8"

  url "https://onflapp.github.io/blog/releases/vipriser/VipRiser.zip"
  appcast "https://onflapp.github.io/blog/releases/vipriser/appcast.xml"
  name "VipRiser"
  desc "Produce a PDF from any application that can print"
  homepage "https://onflapp.github.io/blog/pages/vipriser-pdf-ops/vipriser.html"

  app "VipRiser.app"
end
