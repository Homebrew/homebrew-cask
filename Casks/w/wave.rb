cask "wave" do
  version "0.6.0"
  sha256 "7adaeb4aa3ce072c812950db0656018969f609f842105f1a2cbdb486101e2180"

  url "https://dl.waveterm.dev/builds/waveterm-macos-universal-v#{version}.dmg"
  name "Wave Terminal"
  name "WaveTerm"
  desc "Terminal emulator"
  homepage "https://www.waveterm.dev/"

  livecheck do
    url "https://www.waveterm.dev/download"
    regex(/href=.*?waveterm.+?[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  app "Wave.app"

  zap trash: "~/.waveterm"
end
