cask "wrkspace" do
  arch arm: "arm64", intel: "x64"

  version "2.0.10"
  sha256 :no_check

  url "https://updater.wrkspace.co/download/darwin-#{arch}"
  name "Wrkspace"
  desc "All-in-one dev bootstrapper: one-click startup Docker, scripts, editor, and URLs"
  homepage "https://wrkspace.co/"

  livecheck do
    url :url
    regex(/Wrkspace[._-]v?(\d+(?:\.\d+)+)(?:-(?:arm64|x64|universal))?\.dmg/i)
    strategy :header_match
  end

  depends_on macos: ">= :high_sierra"

  app "Wrkspace.app"

  zap trash: "~/Library/Application Support/Wrkspace",
      rmdir: "~/Documents/Wrkspace"
end
