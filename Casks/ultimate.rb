cask "ultimate" do
  version "3.0.13.511"
  sha256 :no_check

  url "https://download.epubor.com/epubor_ultimate.zip"
  name "Epubor Ultimate"
  desc "eBook converter and DRM removal functions"
  homepage "https://www.epubor.com/"

  livecheck do
    url "https://www.epubor.com/ultimate.html"
    regex(/Version:\s*(\d+(?:\.\d+)+)/i)
  end

  pkg "Ultimate.pkg"

  uninstall pkgutil: "EpuborStudioUltimate2"
end
