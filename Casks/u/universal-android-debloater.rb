cask "universal-android-debloater" do
  version "0.5.1"
  sha256 "9b22d3da881482067fda33c46409b99a34b48ba13a8fb789007de2125772cc32"

  url "https://github.com/0x192/universal-android-debloater/releases/download/#{version}/uad_gui-macos-opengl.tar.gz"
  name "Universal Android Debloater"
  name "UAD"
  desc "GUI which uses ADB to debloat non-rooted Android devices"
  homepage "https://github.com/0x192/universal-android-debloater"

  auto_updates true
  depends_on cask: "android-platform-tools"

  binary "uad_gui-macos-opengl", target: "uad"

  zap trash: "~/Library/Caches/uad"

  caveats do
    requires_rosetta
  end
end
