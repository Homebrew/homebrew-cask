cask "wave" do
  arch arm: "arm64", intel: "x64"

  version "0.8.12"
  sha256 arm:   "9a35a7ea83e89b7d489afc860bff3a1a0709e83e170a0d7e034ac896bcb65742",
         intel: "dca677fbf5ddb70d40385789a5a00983c8d660ca2ad358d112811747c7462186"

  url "https://dl.waveterm.dev/releases-w2/Wave-darwin-#{arch}-#{version}.dmg"
  name "Wave Terminal"
  name "WaveTerm"
  desc "Terminal emulator"
  homepage "https://www.waveterm.dev/"

  livecheck do
    url "https://www.waveterm.dev/download"
    regex(/href=.*?Wave.+?[._-]?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Wave.app"

  zap trash: "~/.waveterm"
end
