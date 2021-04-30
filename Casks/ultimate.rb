cask "ultimate" do
  version "3.0.13.120"
  sha256 :no_check

  url "https://download.epubor.com/epubor_ultimate.zip"
  name "Ultimate Converter"
  homepage "https://www.epubor.com/"

  livecheck do
    url "https://www.epubor.com/ultimate.html"
    strategy :page_match
    regex(/Version:\s*(\d+(?:\.\d+)*)/i)
  end

  pkg "Ultimate.pkg"

  uninstall pkgutil: "EpuborStudioUltimate2"
end
