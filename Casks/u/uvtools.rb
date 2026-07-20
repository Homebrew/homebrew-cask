cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "6.1.0"
  sha256 arm:   "fe2920396d46ae4329e94e5e84e75660682c587770a0a6bdadc6c4d1e56ee174",
         intel: "fbf46739fe4de0ec1c43e375f885b19720a6156559c7a27f740108995d9128bc"

  url "https://github.com/sn4k3/UVtools/releases/download/v#{version}/UVtools_osx-#{arch}_v#{version}.zip"
  name "UVtools"
  desc "MSLA/DLP, file analysis, calibration, repair, conversion and manipulation"
  homepage "https://github.com/sn4k3/UVtools"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  auto_updates true
  depends_on macos: :ventura

  app "UVtools.app"

  zap trash: [
    "~/Library/Preferences/com.UVtools.plist",
    "~/Library/Saved Application State/com.UVtools.savedState",
  ]
end
