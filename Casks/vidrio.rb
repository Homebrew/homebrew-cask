cask "vidrio" do
  if MacOS.version <= :mojave
    version "1.19.1"
    sha256 "abd03be4d007d414e0ace47ea6fffb4c2b049b30e2fef0fc65601f1c976cc4be"
  else
    version "1.23"
    sha256 "b24ec467d51fba90ed55c715c27f700b50dd3fe564ec849d8ceec8ec3c7101bf"
  end

  url "https://vidr.io/releases/macos/Vidrio-#{version}.dmg"
  name "Vidrio"
  desc "Presentation design tool"
  homepage "https://vidr.io/"

  livecheck do
    url "https://vidr.io/blog/"
    regex(/<h2>Vidrio\s+for\s+Mac\s+v?(\d+(?:\.\d+)+).*?</i)
  end

  app "Vidrio.app"

  zap trash: [
    "~/Library/Application Scripts/io.vidr.Vidrio",
    "~/Library/Containers/io.vidr.Vidrio",
  ]
end
