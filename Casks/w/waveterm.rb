cask "waveterm" do
  version "0.5.1"
  sha256 "fe965fe581a66bbd7c394dbfd7ebb1635cd0bf46329042ef86db123fbd7d5751"

  url "https://dl.waveterm.dev/builds/waveterm-macos-universal-v#{version}.dmg"
  name "Wave Terminal"
  name "WaveTerm"
  desc "Modern Terminal for Seamless Workflows"
  homepage "https://www.waveterm.dev/"

  livecheck do
    url "https://github.com/wavetermdev/waveterm"
    strategy :github_releases
  end

  auto_updates false
  depends_on macos: ">= :catalina"
  depends_on arch: [:intel, :arm64]

  app "Wave.app"

  zap trash: [
    "~/.waveterm",
  ]
end
