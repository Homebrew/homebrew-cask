cask "voicebox" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.5"
  sha256 arm:   "6491af9c293554f3dbeece196ca33a2c83bae0435882a059d3709594a0595a15",
         intel: "83c15fa28c25e7f93f08469a5ba22c5a29c4e20072bcfbab6c21a0dfa20a35a7"

  url "https://github.com/jamiepine/voicebox/releases/download/v#{version}/Voicebox_#{version}_#{arch}.dmg",
      verified: "github.com/jamiepine/voicebox/"
  name "Voicebox"
  desc "Local, offline text-to-speech with voice cloning"
  homepage "https://voicebox.sh/"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Voicebox.app"

  zap trash: [
    "~/Library/Application Support/sh.voicebox.app",
    "~/Library/Application Support/voicebox",
    "~/Library/Caches/sh.voicebox.app",
    "~/Library/Caches/voicebox",
    "~/Library/Preferences/sh.voicebox.app.plist",
    "~/Library/Preferences/voicebox.plist",
    "~/Library/Saved Application State/sh.voicebox.app.savedState",
    "~/Library/WebKit/sh.voicebox.app",
    "~/Library/WebKit/voicebox",
  ]
end
