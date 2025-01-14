# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "vernet" do
  version "1.1.0"
  sha256 "753e72272b9b6aff4df1cc5d1c21347b20ed12bfbe8cfccbba3e47724b799319"

  url "https://github.com/osociety/vernet/releases/download/v1.1.0+29/Vernet-v1.1.0+29-macos.dmg"
  name "Vernet"
  desc "Network Analyzer and Monitoring Tool"
  homepage "https://github.com/osociety/vernet/"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"
  depends_on arch: [:x86_64, :arm64]

  app "vernet.app", target: "Vernet.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: "~/Library/Containers/org.fsociety.vernet.vernet"
end
