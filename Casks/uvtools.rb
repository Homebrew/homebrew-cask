cask "uvtools" do
  arch arm: "arm64", intel: "x64"

  version "3.9.0"
  sha256 arm:   "087b24af1df2bffe6493c3e2f1d37a13b8fc9191ba5f09d305cd67991404d299",
         intel: "e8a7d7fe5cf9cac762b719ee4dced575ee91c7696200670b3fe2ac42bd29b33e"

  url "https://github.com/sn4k3/UVtools/releases/download/v#{version}/UVtools_osx-#{arch}_v#{version}.zip"
  name "UVtools"
  desc "MSLA/DLP, file analysis, calibration, repair, conversion and manipulation"
  homepage "https://github.com/sn4k3/UVtools"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "UVtools.app"

  zap trash: [
    "~/Library/Preferences/com.UVtools.plist",
    "~/Library/Saved Application State/com.UVtools.savedState",
  ]
end
