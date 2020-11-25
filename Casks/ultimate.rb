cask "ultimate" do
  version "3.0.12.1028"
  sha256 "d9bf275660788248871114cbdf831a187ef641601c94d6bac4d6207b7339ae63"

  url "https://download.epubor.com/epubor_ultimate.zip"
  appcast "https://www.epubor.com/ultimate.html"
  name "Ultimate Converter"
  homepage "https://www.epubor.com/"

  pkg "Ultimate.pkg"

  uninstall pkgutil: "EpuborStudioUltimate2"
end
