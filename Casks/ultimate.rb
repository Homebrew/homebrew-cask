cask "ultimate" do
  version "3.0.12.1125"
  sha256 "029fd0839ce261877b7291c0d44ad6e1b97654ef75f968813dd5387f560a3500"

  url "https://download.epubor.com/epubor_ultimate.zip"
  appcast "https://www.epubor.com/ultimate.html"
  name "Ultimate Converter"
  homepage "https://www.epubor.com/"

  pkg "Ultimate.pkg"

  uninstall pkgutil: "EpuborStudioUltimate2"
end
