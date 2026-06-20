cask "voicebox" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.0"
  sha256 arm:   "1ef6d28d17b96e1b331340831bf59ea2dd3c526dbbdcadb3d2b90f186e9b3070",
         intel: "a8af27b0b21e68c795c3c67358f070c4684c2a74ea586974de65579d2ddb87b5"

  url "https://github.com/jamiepine/voicebox/releases/download/v#{version}/Voicebox_#{version}_#{arch}.dmg",
      verified: "github.com/jamiepine/voicebox/"
  name "Voicebox"
  desc "AI Voice Studio"
  homepage "https://voicebox.sh/"

  depends_on macos: :big_sur

  app "Voicebox.app"

  zap trash: [
    "~/Library/Application Support/sh.voicebox.app",
    "~/Library/Caches/sh.voicebox.app",
    "~/Library/WebKit/sh.voicebox.app",
  ]
end
