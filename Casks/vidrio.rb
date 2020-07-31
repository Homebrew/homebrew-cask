cask "vidrio" do
  if MacOS.version <= :mojave
    version "1.19.1"
    sha256 "abd03be4d007d414e0ace47ea6fffb4c2b049b30e2fef0fc65601f1c976cc4be"
  else
    version "1.20"
    sha256 "442af94727bcfc89bd330842342fc7857a13bf9c6153384325905d0109445553"
  end

  url "https://vidr.io/releases/macos/Vidrio-#{version}.dmg"
  appcast "https://vidr.io/latest-version"
  name "Vidrio"
  homepage "https://vidr.io/"

  app "Vidrio.app"

  zap trash: [
    "~/Library/Application Scripts/io.vidr.Vidrio",
    "~/Library/Containers/io.vidr.Vidrio",
  ]
end
