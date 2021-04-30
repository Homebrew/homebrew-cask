cask "vivi" do
  version "2.21.2"
  sha256 "909eff68785dd5173b50c245855eedd8868ae1eb555f1a90118e5a059d4168de"

  url "https://downloads.vivi.io/app/#{version}/Vivi.pkg"
  name "Vivi"
  homepage "https://www.vivi.io/"

  pkg "Vivi.pkg"

  uninstall pkgutil: "au.com.viviaustralia.mac"
end
