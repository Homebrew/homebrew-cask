cask "tiled" do
  version "1.7.90"
  sha256 "2fe07ddc2606164b591bfaddfac21a3cef8e71c8090a0402c0cd2a5984a7315e"

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
    File.write shimscript, <<~EOS
      #!/bin/bash
      exec '#{appdir}/Tiled.app/Contents/MacOS/Tiled' "$@"
    EOS
  end
end
