cask "vivi" do
  version "2.20.1"
  sha256 "179d9fce75179f4cad550c2b823bb2254ad255b3e684e4bac987bccf78d65719"

  url "https://downloads.vivi.io/app/#{version}/Vivi.pkg"
  name "Vivi"
  homepage "https://www.vivi.io/"

  pkg "Vivi.pkg"

  uninstall pkgutil: "au.com.viviaustralia.mac"
end
