cask "universal-android-debloater" do
  version "0.5"
  sha256 "2c029731a354e44f1afeec3284d0c2017a35e7ac1f2ddc09da0c4c2e7525aac8"

  url "https://github.com/0x192/universal-android-debloater/releases/download/#{version}/uad_gui-macos-opengl.tar.gz"
  name "Universal Android Debloater"
  name "UAD"
  desc "GUI which uses ADB to debloat non-rooted Android devices"
  homepage "https://github.com/0x192/universal-android-debloater"

  depends_on cask: "android-platform-tools"

  binary "uad_gui-macos-opengl", target: "uad"

  zap trash: "~/Library/Caches/uad"
end
