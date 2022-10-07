cask "thunderbird" do
  version "102.3.2"

  language "cs" do
    sha256 "cccbfcb4c65a7e48f0cbbd0d12c22158805f88cf96b89eb2f967ecd9dee64d0a"
    "cs"
  end
  language "de" do
    sha256 "71c75b11ed4158e44fc33c17e628f24cf29d75a078d0e45a0475304a532eec8a"
    "de"
  end
  language "en-GB" do
    sha256 "96ac4badafd97b1176b470de561baf068c058aa0ba1627486293c974ff64df66"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7841397be7e99dbbda19a8e4d680bda033dcaefd39132a7e315272850644cdcf"
    "en-US"
  end
  language "fr" do
    sha256 "1c140aa3775f25e6c8cdf29af1f64faec892b6d8ac46c819e660725983ad8ab3"
    "fr"
  end
  language "gl" do
    sha256 "be35028ed5297f36bf5de07f5326252e499e807b2851d1ebf11b5fd0633d5839"
    "gl"
  end
  language "it" do
    sha256 "5717e30ad04647d61884d302b69f011317c52a17ec987551c8b8fde70f409aee"
    "it"
  end
  language "ja" do
    sha256 "d86b27d409c5ba1f60db18c0fffd7d02b8784dc0eaf2eb266d89abb0d462a72f"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "94f51b4ebe356b5d4dd1633e26ef544abb90825643a6ae61a4edf1200d8e26bf"
    "nl"
  end
  language "pl" do
    sha256 "39374ca4c3cd5a5b1c2ec8a12910212575323c1c1c85863711c85a8ac27c14da"
    "pl"
  end
  language "pt" do
    sha256 "5ff2c1bec1a4189bda3e9bdb7c81387477cba960333c931c7087f0b1dbd78e1b"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "4987a72f53092b0c0475191ce6213d793ca683d34cb60bb672c162ede34bd463"
    "pt-BR"
  end
  language "ru" do
    sha256 "ac03e69adec5da575520e8a0413e95f4989e9a2a5f93c5c20f018d6f6c1e1eeb"
    "ru"
  end
  language "uk" do
    sha256 "b6ac2ca7dda47985caa478683126fdc6ec618526befbf9ca1210293be20c5d3e"
    "uk"
  end
  language "zh-TW" do
    sha256 "4b7ec88d99c23814e284c5e1aabf6e969b72faacc8c66765ad9381e95d81f958"
    "zh-TW"
  end
  language "zh" do
    sha256 "3ae126bcc27a2f28039c25ebdc97b1d8cfa1ccb565a9224ba191387796a89600"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg",
      verified: "ftp.mozilla.org/pub/thunderbird/"
  name "Mozilla Thunderbird"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/"

  livecheck do
    url "https://download.mozilla.org/?product=thunderbird-latest-ssl&os=osx"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/thunderbird-beta"
  depends_on macos: ">= :sierra"

  app "Thunderbird.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*",
    "~/Library/Caches/Thunderbird",
    "~/Library/Preferences/org.mozilla.thunderbird.plist",
    "~/Library/Saved Application State/org.mozilla.thunderbird.savedState",
    "~/Library/Thunderbird",
  ]
end
