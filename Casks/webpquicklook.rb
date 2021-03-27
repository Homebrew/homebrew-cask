cask "webpquicklook" do
  version :latest
  sha256 :no_check

  url "https://raw.githubusercontent.com/emin/WebPQuickLook/master/WebpQuickLook.tar.gz",
      verified: "raw.githubusercontent.com/emin/WebPQuickLook/"
  name "WebPQuickLook"
  homepage "https://github.com/emin/WebPQuickLook"

  qlplugin "WebpQuickLook.qlgenerator"
end
