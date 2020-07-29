cask "webpquicklook" do
  version :latest
  sha256 :no_check

  # raw.githubusercontent.com/emin/WebPQuickLook/ was verified as official when first introduced to the cask
  url "https://raw.githubusercontent.com/emin/WebPQuickLook/master/WebpQuickLook.tar.gz"
  name "WebPQuickLook"
  homepage "https://github.com/emin/WebPQuickLook"

  qlplugin "WebpQuickLook.qlgenerator"
end
