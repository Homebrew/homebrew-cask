cask "ultimate" do
  version "3.0.12.1028"
  sha256 "25c1feac46134b47a2645e98e8e49102f88d9201b29fcec79f35ef8f57567fd8"

  url "https://download.epubor.com/epubor_ultimate.zip"
  appcast "https://www.epubor.com/ultimate.html"
  name "Ultimate Converter"
  homepage "https://www.epubor.com/"

  pkg "Ultimate.pkg"

  uninstall pkgutil: "EpuborStudioUltimate2"
end
