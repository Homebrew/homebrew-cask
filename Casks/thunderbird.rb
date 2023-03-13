cask "thunderbird" do
  version "102.8.0"

  language "cs" do
    sha256 "3fde20d3a638b624a36f3ef11c7250a5a727b0d816011a6e9dc3cf7e0bf7a237"
    "cs"
  end
  language "de" do
    sha256 "700e7992393c9be3e56da855a60fce58a0317fa68f919bc022ea6a16fb16af50"
    "de"
  end
  language "en-GB" do
    sha256 "1dd77d13f5ec91e84f0d538c30fc61aa9c4a3694d50f1812f70cd024b2380c05"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fafe1543bbe6a41987eddf779e5c9a0708cf01a09825bea4361f3384ae7f08d4"
    "en-US"
  end
  language "fr" do
    sha256 "9a37d1c181c5cfbb708ba9465b98c8e0dd7b707e8f47353b203a2ee92c9eed63"
    "fr"
  end
  language "gl" do
    sha256 "6c6c5e27e1e02eadba64a707c9c1d80d9dca9732b854ff863734d522b45c585d"
    "gl"
  end
  language "it" do
    sha256 "9b028b61b6de29a7debd1eb21012e9fe6b794d70979cd4494dbea410fbec7fe8"
    "it"
  end
  language "ja" do
    sha256 "0fdb7c863af890a8453bb4cc4995b79f0918c1f5e6f3118cd24c2d461e61e6e9"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "efae99c3ff5f931cd07946eb55ae4719d583c754f8f7372f52d276563d18e67c"
    "nl"
  end
  language "pl" do
    sha256 "28cdf4a485f62ecc51c120cb6181f3f161b8ae15edb40aa4b9c0c0c5eae3f3dc"
    "pl"
  end
  language "pt" do
    sha256 "da980300dea20119fe6f5e625740a37ca9ec74624710846f317428d85b6c3560"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "5b7119393eadd7b36bae308f20ef303cdc59d3ebdd6aab8a8005625bec0823e4"
    "pt-BR"
  end
  language "ru" do
    sha256 "3a76fe49fb5df90ea5c6c45ba1cf621fa8d5e25ea2e352216fe2de79696c47ab"
    "ru"
  end
  language "uk" do
    sha256 "bd4b016ec25b5d5addc3c3bbdd33a70eb9143bde751e087e8e8aca43724bc52b"
    "uk"
  end
  language "zh-TW" do
    sha256 "6d4f6fd4032bf0ad0c5857a9522ac0dd751a277d1995876121534ac836303c03"
    "zh-TW"
  end
  language "zh" do
    sha256 "acc217ddbf19bec8b36dd51368f71f51b9f1bf00d212008ff089cf1e7f034f00"
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
