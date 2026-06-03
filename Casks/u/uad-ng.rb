cask "uad-ng" do
  version "1.2.0"
  sha256 "bba4bfdae1f716717e6094fbd9fd88ed859a43ae023bdecd4c42abacc523a7bd"

  url "https://github.com/Universal-Debloater-Alliance/universal-android-debloater-next-generation/releases/download/v#{version}/uad-ng-macos.tar.gz"
  name "Universal Android Debloater NG"
  desc "Android debloating tool (Next Generation)"
  homepage "https://github.com/Universal-Debloater-Alliance/universal-android-debloater-next-generation"

  binary "uad-ng-macos", target: "uad-ng"
end
