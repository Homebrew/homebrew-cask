cask "thunderbird" do
  version "91.3.0"

  language "cs" do
    sha256 "3e2795949ba8af4d88a2cc8c41798b69f52c982b5476d5cbefd1166ed6735939"
    "cs"
  end
  language "de" do
    sha256 "b13b5660670c542e3b40526ac9e059d529944a8233f1dce43eea35ad0e3c2114"
    "de"
  end
  language "en-GB" do
    sha256 "eb92f4a66b1a7436bea37eb7b8ae6164b5ecd6f5cb39d9274b89fa39bcc47045"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ab475f9b1b4d03b36fd41e4afa5fe58cb1adfa05722c485e0eaa1e43d6bf5658"
    "en-US"
  end
  language "fr" do
    sha256 "c29f512a06cf5ea8a3aac79a6cfe88258bf285f7cd46102cf2f29f0097dcb00f"
    "fr"
  end
  language "gl" do
    sha256 "687125e12ca80824e0d162b3b26c2991ad9b89bcf444f5da1f885f9325a7666e"
    "gl"
  end
  language "it" do
    sha256 "1a65bd34f735149f9c5f0d965d6c2d5b4b992aa1ff69197cee8180246b962782"
    "it"
  end
  language "ja" do
    sha256 "62716f5531631025ee6fd8a4cb1dcc87a08608aa2edf47f99f777fd22071a692"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "29b1a75ab24560ab18473816a7aa2f99a803c755118a52a77d5339cf51203047"
    "nl"
  end
  language "pl" do
    sha256 "68d9857802d2c8bb173d8e0875973b493c3f29b916fc2aab9dd9a44ce10a2512"
    "pl"
  end
  language "pt" do
    sha256 "a0594a9cfd2c44650b939e9881cbc3a48efbccdc98fb60082b63757ed1d61809"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "0416ea1deb96cd621b3bea866089d73455fc31de61ec5258a542a8af16804b24"
    "pt-BR"
  end
  language "ru" do
    sha256 "6c97a5ca394d69a034f43f7bb0bf8a9b42a2226b782e0324f16dbe3c95791663"
    "ru"
  end
  language "uk" do
    sha256 "fd30202f997dbf5dd7c191c9da3758721a9a7e27539452fd166d56fdf44ae73a"
    "uk"
  end
  language "zh-TW" do
    sha256 "18a477271bdeaa6dab788f49eefd53425f905d1e1d08653ab1e9545a077b9f9f"
    "zh-TW"
  end
  language "zh" do
    sha256 "e85c8203e262ce6e6f93036265e982ae91db38b51bba09ce34886fe635002cc3"
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

  app "Thunderbird.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*",
    "~/Library/Caches/Thunderbird",
    "~/Library/Preferences/org.mozilla.thunderbird.plist",
    "~/Library/Saved Application State/org.mozilla.thunderbird.savedState",
    "~/Library/Thunderbird",
  ]
end
