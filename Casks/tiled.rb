cask "tiled" do
  version "1.4.3"
  sha256 "a7d30d6e9fcdacdd49262dceb041c2a5dd975f177ab8d68b29832714414872de"

  url "https://github.com/bjorn/tiled/releases/download/v#{version}/Tiled-#{version}-macos.zip",
      verified: "github.com/bjorn/tiled/"
  appcast "https://github.com/bjorn/tiled/releases.atom"
  name "Tiled"
  desc "Flexible level editor"
  homepage "https://www.mapeditor.org/"

  depends_on macos: ">= :sierra"

  app "Tiled.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/tiled.wrapper.sh"
  binary shimscript, target: "tiled"

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/bash
      exec '#{appdir}/Tiled.app/Contents/MacOS/Tiled' "$@"
    EOS
  end
end
