cask "voicepeak" do
  version "1.2.2"
  sha256 :no_check

  url "https://download.dreamtonics.com/voicepeak-jashinchan-trial/voicepeak_jashinchan_freetrial.zip",
      verified: "download.dreamtonics.com/voicepeak-jashinchan-trial/"
  name "VOICEPEAK"
  desc "High quality text-to-speech software with emotional expression"
  homepage "https://www.ah-soft.com/voice/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :high_sierra"

  pkg "VOICEPEAK 邪神ちゃん 無料お試し版/Mac/Voicepeak.pkg"

  uninstall pkgutil: "com.dreamtonics.voicepeak.editor"

  zap trash: [
    "~/Documents/Voicepeak Downloads",
    "~/Library/Caches/com.dreamtonics.downloader.voicepeak",
    "~/Library/Caches/com.dreamtonics.voicepeak.editor",
    "~/Library/Caches/voicepeak",
    "~/Library/Caches/voicepeak-downloader",
    "~/Library/HTTPStorages/com.dreamtonics.downloader.voicepeak",
    "~/Library/HTTPStorages/com.dreamtonics.voicepeak.editor",
    "~/Library/Preferences/com.dreamtonics.voicepeak.editor.plist",
    "~/Library/Saved Application State/com.dreamtonics.downloader.voicepeak.savedState",
    "~/Library/Saved Application State/com.dreamtonics.voicepeak.editor.savedState",
  ]
end
