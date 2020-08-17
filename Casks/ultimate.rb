cask "ultimate" do
  version "3.0.12.804"
  sha256 "4c0b140208c23695dab8034bc8a81db0d5bc9287f70082fc90f3dda7ad7a7bc5"

  url "https://download.epubor.com/epubor_ultimate.zip"
  appcast "https://www.epubor.com/ultimate.html"
  name "Ultimate Converter"
  homepage "https://www.epubor.com/"

  pkg "Ultimate.pkg"

  uninstall pkgutil: "EpuborStudioUltimate2"
end
