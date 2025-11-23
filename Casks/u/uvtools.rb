cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "5.2.1"
  sha256 arm:   "a78f1690ae3a8965855c8e603524f87a03bec9c6d6c14b411944f20c91b6eb53",
         intel: "400f86706f272d949263b20214c412d20d5a752c85d17266033fb77cb7f0466d"

  url "https://github.com/sn4k3/UVtools/releases/download/v#{version}/UVtools_osx-#{arch}_v#{version}.zip"
  name "UVtools"
  desc "MSLA/DLP, file analysis, calibration, repair, conversion and manipulation"
  homepage "https://github.com/sn4k3/UVtools"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  auto_updates true

  app "UVtools.app"

  zap trash: [
    "~/Library/Preferences/com.UVtools.plist",
    "~/Library/Saved Application State/com.UVtools.savedState",
  ]
end
