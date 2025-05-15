# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "wrkspace" do
  version "2.0.9"
  sha256 :no_check

  url "https://updater.wrkspace.co/download/darwin"
  name "Wrkspace"
  desc "All-in-one dev bootstrapper: one-click startup for Docker, scripts, editor, and URLs"
  homepage "https://wrkspace.co"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url :url
    strategy :header_match
  end

  app "Wrkspace.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: [
    "~/Library/Application Support/wrkspace"
  ]
end
