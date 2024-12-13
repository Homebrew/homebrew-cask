cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.10.1"
  sha256 arm:   "4409112f688cbccad84b306108e583431c694ba4988aab985d12069c378bf20a",
         intel: "ca2268d91b60fd2bc47fb2bd97f8ba5db6ae3137a56b61ce019f5820240c51f6"

  url "https://dl.waveterm.dev/releases-w2/Wave-darwin-#{arch}-#{version}.dmg"
  name "Wave Terminal"
  name "WaveTerm"
  desc "Terminal emulator"
  homepage "https://www.waveterm.dev/"

  livecheck do
    url "https://dl.waveterm.dev/releases-w2/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Wave.app"

  zap trash: "~/.waveterm"
end
