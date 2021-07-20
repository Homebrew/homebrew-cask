cask "tiled" do
  version "1.7.1"
  sha256 "894839a96e3bfdd3fe36dbcaea73fee5d7a8b377f391403282e024108261b9e6"

  url "https://github.com/bjorn/tiled/releases/download/v#{version}/Tiled-#{version}-macos.zip",
      verified: "github.com/bjorn/tiled/"
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
