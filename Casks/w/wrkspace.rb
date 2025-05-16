cask "wrkspace" do
  arch arm: "arm64", intel: "amd64"

  version "2.0.9"
  sha256 :no_check

  url "https://updater.wrkspace.co/download/darwin-#{arch}"
  name "Wrkspace"
  desc "All-in-one dev bootstrapper: one-click startup Docker, scripts, editor, and URLs"
  homepage "https://wrkspace.co/"

  livecheck do
    url :url
    regex(/Wrkspace[._-]v?(\d+(?:\.\d+)+)(?:-arm64)?\.dmg/i)
    strategy :header_match
  end

  depends_on macos: ">= :high_sierra"

  app "Wrkspace.app"

  zap trash: [
    "~/Library/Application Support/Wrkspace",
    "~/Documents/Wrkspace",
  ]
end
