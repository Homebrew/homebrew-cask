cask "thunderbird" do
  version "78.11.0"

  language "cs" do
    sha256 "30ebf0583df48dca7a6492efefc43f00b8f0b2012c6d70b5a80b32fd2e6b16d1"
    "cs"
  end
  language "de" do
    sha256 "105bbf1fd2af8525b8c6f96cbe3a8921da7db2c0b7186c0ccc78cc15c7884f9c"
    "de"
  end
  language "en-GB" do
    sha256 "6bde647c8cca2953ec862ce13051f4a90c9832af8e937ec79bd88474d1fa540f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7286dbc11169c59236509deda3cf73b44dce7a5c806e274b052befc72623ad18"
    "en-US"
  end
  language "fr" do
    sha256 "2888416fabb5d0f744e020229503258205f11238137e55a03b503f3b57f25fae"
    "fr"
  end
  language "gl" do
    sha256 "0c2046fc8a75edb42d0c2613c62ebbf1ab9aaeb1df26697f5cd3b578c173367d"
    "gl"
  end
  language "it" do
    sha256 "f0bb438d67d94b31b0a65b4dc0d8d8016bfb76474eb77ea0a289866569098279"
    "it"
  end
  language "ja" do
    sha256 "31c57fc8809474a7767b7405ab44e25242a533ce58cff9ab7e29dbbd4345591a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "36c35a994d9f96e4bb54403d8b7f06012b1f727f53f33a3753cb23e286248a04"
    "nl"
  end
  language "pl" do
    sha256 "185e8c8e3e910830733cdb0a2c1ea19b95c47ff4fb5365c7df6e93e55d2ca571"
    "pl"
  end
  language "pt" do
    sha256 "159651601044ce7e17b6ab7530afba65cc4fb558d0d6c9335f5c49564d19cea6"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "3021eff77010f4bb89c97fb20c1ae12608918cd5ec79430082aa8a22a75459a5"
    "pt-BR"
  end
  language "ru" do
    sha256 "023450515ed9c9c46c16aa93f9995449cb4b23d19478f309bb4d92ba80cc70f2"
    "ru"
  end
  language "uk" do
    sha256 "baf2af616cb014fa8fffea9cda8470b5248df6ecfb331ada2fffac81e046cb88"
    "uk"
  end
  language "zh-TW" do
    sha256 "acf66714e4bbae3bcf5de9d1ed65eaa61087ff360ec16e3a385d1792d6874823"
    "zh-TW"
  end
  language "zh" do
    sha256 "e0dd6fed4ec7bf614a5d89ed325c0e0450c548bf03b3df86e96598658d6a1c5c"
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
    "~/Library/Thunderbird",
    "~/Library/Caches/Thunderbird",
    "~/Library/Saved Application State/org.mozilla.thunderbird.savedState",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*",
    "~/Library/Preferences/org.mozilla.thunderbird.plist",
  ]
end
