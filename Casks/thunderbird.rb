cask "thunderbird" do
  version "102.13.0"

  language "cs" do
    sha256 "dfabc97b4ce2cccc8e763fdaaba4ea23038654e008dd388888af772f3658326d"
    "cs"
  end
  language "de" do
    sha256 "0ac45d0a0102c2a41db58b6057896150d5d56c3069cd550d7defda63ebb63592"
    "de"
  end
  language "en-GB" do
    sha256 "34aeb39af10411319c6596a0a886d19a34cb9bcbbcbfccd4f3979a0e5b0f22bd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3345819498abb7167a331259f8100076c56d9359e1b633b939dee008ad2cf9a2"
    "en-US"
  end
  language "fr" do
    sha256 "803c12cb1c7511ae8ffdce31f2306a36018ca22b1e39341ee3cbfabd267fbb80"
    "fr"
  end
  language "gl" do
    sha256 "51f63bc9df007ea4d559aec1df3304b2742dbd2a3014a965b07b375fe4cd11ad"
    "gl"
  end
  language "it" do
    sha256 "1dabc39e2197efa5748a1218d489c562c31f693b6e4f34acac9b6d90fac20d05"
    "it"
  end
  language "ja" do
    sha256 "1a5d262225eadfa26b9135ce4c4b4859289c5753dbc6fe963ae548f473ac3cf2"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "10c48c9cc5a12ef088554c6214b18ff2b3956308f0931c18977b8cf789d19168"
    "nl"
  end
  language "pl" do
    sha256 "e472cc90bce6b7492cd3ddef7cc7cccf1dc61c21bc883484f7f8e88fbfbc674e"
    "pl"
  end
  language "pt" do
    sha256 "913941addb94ea012a9cf990e3e1632743cdd6b612ff2b5920c533628cab7f7a"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "1ec00ac31ead93341fad2247624d0e3b7074fc4a6de4efea7f9f84a007a57e98"
    "pt-BR"
  end
  language "ru" do
    sha256 "99aaea01c3615e09b933c951e706fd4787e44a2b6abd3f5eb4157c41cfbb2656"
    "ru"
  end
  language "uk" do
    sha256 "14936c725e00620385cdd218aa7a3278cd3866f2c48a47a0445bf16cd5cb2e33"
    "uk"
  end
  language "zh-TW" do
    sha256 "d5024007113db3d532088caaba88103b1886841fb0601fd0f1dca9dd1cee6c8e"
    "zh-TW"
  end
  language "zh" do
    sha256 "533311196f188ef4c52c6167108a72406c9272453cadebcfd9730c4ff6e8d64f"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/thunderbird/"
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
