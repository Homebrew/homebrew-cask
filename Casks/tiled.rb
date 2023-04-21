cask "tiled" do
  version "1.10.1"

  on_high_sierra :or_older do
    sha256 "9cd3dae263fd142c72ede7d6b78190860e25580f7ae645145daa39d918aa1ce5"

    url "https://github.com/mapeditor/tiled/releases/download/v#{version}/Tiled-#{version}_macOS-10.12-10.13.zip",
        verified: "github.com/mapeditor/tiled/"
  end
  on_mojave :or_newer do
    sha256 "75e3d8ccb4fb9a7d5f5fd964cead157b01580f79124e433a4786378114abaeab"

    url "https://github.com/mapeditor/tiled/releases/download/v#{version}/Tiled-#{version}_macOS-10.14+.zip",
        verified: "github.com/mapeditor/tiled/"
  end

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

  zap trash: [
    "~/Library/Application Support/Tiled",
    "~/Library/Preferences/org.mapeditor.Tiled.plist",
    "~/Library/Preferences/Tiled",
  ]
end
