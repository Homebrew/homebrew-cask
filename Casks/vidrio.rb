cask "vidrio" do
  if MacOS.version <= :mojave
    version "1.19.1"
    sha256 "abd03be4d007d414e0ace47ea6fffb4c2b049b30e2fef0fc65601f1c976cc4be"
  else
    version "1.22"
    sha256 "2022f2728cde1d02dc130511b907e78fed137fda3663925aba14666d2f29277a"
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
