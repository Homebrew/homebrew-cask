cask "thunderbird" do
  version "91.6.2"

  language "cs" do
    sha256 "620b644357f647f9f7295fcb7a4bba10ad04408f55b68275db91b8a2b6775b6d"
    "cs"
  end
  language "de" do
    sha256 "1356fe746514337d1fbbe137adb4775a0e807dbf18f97f8b18c7567f28d96268"
    "de"
  end
  language "en-GB" do
    sha256 "7ece366db500b9100c36429d94b00c1cceec971673a35a908c12ec171e91d0ed"
    "en-GB"
  end
  language "en", default: true do
    sha256 "24e40b9a9b28f3b16fd161ef26549b8be81882dfa5765693de9044e83d8f13f0"
    "en-US"
  end
  language "fr" do
    sha256 "33117e33f492039dd795c66ffeee0b58e7af6a838015bac6de24d2d4993a927a"
    "fr"
  end
  language "gl" do
    sha256 "0e7692d6012f598b07ab66ee737dcde41757d1a3b7a8480cf0b93e8fb387b891"
    "gl"
  end
  language "it" do
    sha256 "700b18f8962b773127d6d10827b1f26506dd9a93ecfaaa08c6c0ff32f4f12e90"
    "it"
  end
  language "ja" do
    sha256 "a07f19eb00c2bd8925c586a82fbc0ca5e82e472e499d08d0e2b42c44022e1537"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "512a939d3304891fa71e9c33a881e69226c4832728cf9b1aefe96f084ba0f4dc"
    "nl"
  end
  language "pl" do
    sha256 "9fd5e26ef584a04249e329b25ee2622fb343a5f1908ab456d3288b5266629429"
    "pl"
  end
  language "pt" do
    sha256 "5cf441e454d58f5a4c457e9d167ac7ee5a5496d9d161ab2c1d387487d354f05b"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "67f64a2007b5f50778078e807e4b7066a23648a3c85d3decd94243f9d4a52cdd"
    "pt-BR"
  end
  language "ru" do
    sha256 "f1fd98cde008e4fe39ecd998310356fc58aef47753f42e499a69e9a3392024b9"
    "ru"
  end
  language "uk" do
    sha256 "796b04cfcb78ce899380b331fee704235c88bc5333a3767f4236145cd5b388a1"
    "uk"
  end
  language "zh-TW" do
    sha256 "a8a3374dfc8dfa4c05c88624a939d8f07aa7e10b8d3e5a8e21912afebfb0ed43"
    "zh-TW"
  end
  language "zh" do
    sha256 "39a3cba070a9d4745a4607675195dc65a91880debfd0b1b7f4c8323abae00d52"
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
