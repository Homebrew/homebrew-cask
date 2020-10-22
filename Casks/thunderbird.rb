cask "thunderbird" do
  version "78.4.0"

  language "cs" do
    sha256 "44c3f997bfc0f103dfa40e7620f4c90efe9e3ae571709fbfc69bef9ccb00b86f"
    "cs"
  end
  language "de" do
    sha256 "928e7458e8fbccec3f12947f3ca78a19cf2854ed2e6a6ac58e9a843028b7c7fb"
    "de"
  end
  language "en-GB" do
    sha256 "d2f55ffe0cceb6caf8676a7c709d1ffa0f566e5d08c6063d3a61d455d8a8204c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e2a5e5c8d9b503695d99aab64e095265e873f644c808398c6e2823905faf963d"
    "en-US"
  end
  language "fr" do
    sha256 "34ee02b7e8d29c0331bacd23bb61f67b6b2805b89e6aa1be0818a03d83ad6b1f"
    "fr"
  end
  language "gl" do
    sha256 "4687759932136be679d0d62a9bb21ebf38366a94ba5da7dbbe6e98064f0c46c8"
    "gl"
  end
  language "it" do
    sha256 "250d2e88e91c1bf7b064fc23f24bff6382276202dbf3133f4b5cbed0a379aa78"
    "it"
  end
  language "ja" do
    sha256 "584d266d410b77d38db9d37a9dd172691c3dbb3db4062b7729ca594d485dcda5"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f6f557b8c4fa3392c5314f2f78957219158c0af443476a97f2cd0d4fad92c4ba"
    "nl"
  end
  language "pl" do
    sha256 "6521385d52bd66ae6186991faec053f2e38999676a94a699b9655bca025ebef2"
    "pl"
  end
  language "pt" do
    sha256 "ee69bcd05eb08cb349c11ebef175d0d4873f183dbb111df5049959c7f1dffd4c"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "f286240ebe82bcbd6af8cfd0029b9ffb6f8277fcb63c1b26bf1b964cf3032307"
    "pt-BR"
  end
  language "ru" do
    sha256 "0b2c0cd79d19a243bdb560a3f73e93740023c65df8d0c8de25459e3a9bf00618"
    "ru"
  end
  language "uk" do
    sha256 "40040bff2d292c315ff3c81fe269c20ef77f9a85386a75bdf45406838e455d5d"
    "uk"
  end
  language "zh-TW" do
    sha256 "3f50d633f7c482fd5158a68c4ca6e83b05f2d19f1429bddebed3d4655767adb5"
    "zh-TW"
  end
  language "zh" do
    sha256 "2518ec7a4fcd443aa287b8d9485a7ddddd03391330fff57c915186129cc9cc22"
    "zh-CN"
  end

  # ftp.mozilla.org was verified as official when first introduced to the cask
  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  appcast "https://www.thunderbird.net/en-US/thunderbird/releases/"
  name "Mozilla Thunderbird"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/"

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/thunderbird-beta"

  app "Thunderbird.app"

  zap trash: [
    "~/Library/Thunderbird",
    "~/Library/Caches/Thunderbird",
    "~/Library/Saved Application State/org.mozilla.thunderbird.savedState",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*",
    "~/Library/Preferences/org.mozilla.thunderbird.plist",
  ]
end
