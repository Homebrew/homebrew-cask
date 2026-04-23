cask "voicevox" do
  version "0.25.1"

  on_arm do
    sha256 "a1501e26a5759f5cf7ec571bb82a33c227e61ee66646f8e17c3504441085d99d"

    url "https://github.com/VOICEVOX/voicevox/releases/download/#{version}/voicevox-macos-cpu-arm64-#{version}.zip",
        verified: "github.com/VOICEVOX/voicevox/"
  end
  on_intel do
    sha256 "9a7ff1391b85ec57c070128a137a3010c44d3b376487272d36f479f28ca20289"

    url "https://github.com/VOICEVOX/voicevox/releases/download/#{version}/voicevox-macos-cpu-x64-#{version}.zip",
        verified: "github.com/VOICEVOX/voicevox/"
  end

  name "VOICEVOX"
  desc "Free Japanese text-to-speech software"
  homepage "https://voicevox.hiroshiba.jp/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "VOICEVOX/VOICEVOX.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/jp.hiroshiba.voicevox.sfl*",
        "~/Library/Application Support/voicevox*",
        "~/Library/Logs/voicevox",
        "~/Library/Preferences/jp.hiroshiba.voicevox.plist",
      ],
      rmdir: "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments"
end
