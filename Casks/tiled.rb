cask "tiled" do
  version "1.6.0"
  sha256 "ce2b4e85e10496c905086a8395fa8bbe71164d344a24090815023cf2b29952af"

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
