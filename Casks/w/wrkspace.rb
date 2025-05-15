# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "wrkspace" do
  arch arm: "arm64", intel: "amd64"
  version "2.0.9"
  sha256 :no_check

  url "https://updater.wrkspace.co/download/darwin-#{arch}"

  name "Wrkspace"
  desc "All-in-one dev bootstrapper: one-click startup for Docker, scripts, editor, and URLs"
  homepage "https://wrkspace.co"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url :url
    regex(/Wrkspace[._-]v?(\d+(?:\.\d+)+)(?:-arm64)?\.dmg/i)
    strategy :header_match
  end

  app "Wrkspace.app"

  depends_on macos: ">= :high_sierra"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: [
    "~/Library/Application Support/wrkspace"
  ]
end
