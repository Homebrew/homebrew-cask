cask "tiled" do
  version "1.8.6"
  sha256 "c33409d249fa885955136b2d1188740a01be487a1f7d0646cc9f33b50efcdaff"

  url "https://github.com/mapeditor/tiled/releases/download/v#{version}/Tiled-#{version}-macos.zip",
      verified: "github.com/mapeditor/tiled/"
  name "Tiled"
  desc "Flexible level editor"
  homepage "https://www.mapeditor.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
