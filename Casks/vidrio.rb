cask "vidrio" do
  if MacOS.version <= :mojave
    version "1.19.1"
    sha256 "abd03be4d007d414e0ace47ea6fffb4c2b049b30e2fef0fc65601f1c976cc4be"
  else
    version "1.21"
    sha256 "898a2777af79559c4c75ac7e072354267329de770d80e3bcb858cfae6b1d8b7b"
  end

  url "https://vidr.io/releases/macos/Vidrio-#{version}.dmg"
  appcast "https://vidr.io/latest-version"
  name "Vidrio"
  desc "Presentation design tool"
  homepage "https://vidr.io/"

  app "Vidrio.app"

  zap trash: [
    "~/Library/Application Scripts/io.vidr.Vidrio",
    "~/Library/Containers/io.vidr.Vidrio",
  ]
end
