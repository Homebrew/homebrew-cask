cask "tiled" do
  version "1.9.1"
  sha256 "23516778517e1783eef7db2206ca35f63605b196a2846b39ed806816e86f383e"

  url "https://github.com/mapeditor/tiled/releases/download/v#{version}/Tiled-#{version}_macOS-10.13+.zip",
      verified: "github.com/mapeditor/tiled/"
  name "Tiled"
  desc "Flexible level editor"
  homepage "https://www.mapeditor.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

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
