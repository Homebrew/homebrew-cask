cask "ultimate" do
  version "3.0.13.120"
  sha256 :no_check

  url "https://download.epubor.com/epubor_ultimate.zip"
  appcast "https://www.epubor.com/ultimate.html"
  name "Ultimate Converter"
  homepage "https://www.epubor.com/"

  pkg "Ultimate.pkg"

  uninstall pkgutil: "EpuborStudioUltimate2"
end
