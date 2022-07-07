cask "thunderbird" do
  version "102.0"

  language "cs" do
    sha256 "b8ef698396dc02c33b0240d141c3c6495fdc9ca300f77e3d7436e0e08fabce52"
    "cs"
  end
  language "de" do
    sha256 "b7a7f8520751cba0e3c80e3627f253a8a19f51bb6475146265a31faa1df64574"
    "de"
  end
  language "en-GB" do
    sha256 "23ec8907d9da3f691e6729db360c67cc1e17114b8d30bbea7ee99ff2e855242b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5812a32b91422383c2cbd82dc8668db415edce251c0c98759d8e21e5141cf055"
    "en-US"
  end
  language "fr" do
    sha256 "1986eeed7d14e703bf169b279db09f0eca65712c7dad08e43000c88872c99e56"
    "fr"
  end
  language "gl" do
    sha256 "07a7950823f1cf3370fe75fbe7c66cd670e6a2196bc924e0212a576a4e01e58e"
    "gl"
  end
  language "it" do
    sha256 "484f69fab7b9b00775109a3931c5d282e1e1b3d489f3573036d39ea2e9f4fd26"
    "it"
  end
  language "ja" do
    sha256 "34d953eab5ef29ba3228fd8e5b4eca38209c0e4e90f3ac579542e5ca2c59a9ab"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "581e495c722b56905ed73b4226427f680535e98fafe9796d47294d93befa2e15"
    "nl"
  end
  language "pl" do
    sha256 "321dc89395624cf2d876991d2294fafa7ceec0b4862b3d9389577bc29d5c7ee3"
    "pl"
  end
  language "pt" do
    sha256 "b117d4970aac0d1c0628ac5b694390a33e0f9ea9be640e3b451625ae420b825c"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "7216f0deece5e81f6696ff22bae545d4349a1b4e3c153c91cb07b82f2e73fda1"
    "pt-BR"
  end
  language "ru" do
    sha256 "4f17064eada1a2ce6ef973c3ddb35de6ddb6821743bc6eee199a3a067c0d8053"
    "ru"
  end
  language "uk" do
    sha256 "3e47e6cb7f86fcc887e5fbd8ad476cf5358cf1ad1a40b31a81642a8f029fe94e"
    "uk"
  end
  language "zh-TW" do
    sha256 "a588d6c8be02b25bea18aca817dcf8e2b33dde0a510857ec0adc383450d76da8"
    "zh-TW"
  end
  language "zh" do
    sha256 "c09c7ff767c54eb0a1c5ff83b7a0614258b8c13a8bf3e664d34465faee43bcf8"
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
