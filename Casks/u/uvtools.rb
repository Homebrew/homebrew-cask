cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "5.1.6"
  sha256 arm:   "3eb2aff8d50921dc0e060c41f56fd88842ac0f507c8b4f603a733554f3f960aa",
         intel: "feed014fe1e82a1eed3ca59f67207adba31cb993bea3cc248ca28be1a430e2fa"

  url "https://github.com/sn4k3/UVtools/releases/download/v#{version}/UVtools_osx-#{arch}_v#{version}.zip"
  name "UVtools"
  desc "MSLA/DLP, file analysis, calibration, repair, conversion and manipulation"
  homepage "https://github.com/sn4k3/UVtools"

  # This simply ensures that the cask continues to be checkable despite the
  # implicit deprecation from the `disable!` call.
  livecheck do
    url :url
  end

  disable! date: "2026-09-01", because: :unsigned

  auto_updates true
  depends_on macos: ">= :catalina"

  app "UVtools.app"

  zap trash: [
    "~/Library/Preferences/com.UVtools.plist",
    "~/Library/Saved Application State/com.UVtools.savedState",
  ]
end
