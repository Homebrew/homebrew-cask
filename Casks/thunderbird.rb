cask "thunderbird" do
  version "102.11.1"

  language "cs" do
    sha256 "ea1521c39914203a10167806b70154ab88839e8c598c16f5f58fc002847c7365"
    "cs"
  end
  language "de" do
    sha256 "801e1336a7ef696e2e76c8bc11222a3cc4eb2e38869fe3bb9c15911c5dcbc0eb"
    "de"
  end
  language "en-GB" do
    sha256 "1b2b5522ce2b9ad8a3ee708d18483fdcada7d32c0753d8b15475503259f5d04e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "40b300a6f7ab6eb762ce7f002c2ed64daa272954df3f1f9d969c74c1b5d28ba8"
    "en-US"
  end
  language "fr" do
    sha256 "30cbd2cd26bb6e87c52238a8e92d4ade11dafc4d4b962b02bf6c6d2949020006"
    "fr"
  end
  language "gl" do
    sha256 "7532d81d10cbe5a59258908ecae21d0c2ff0241108e5e3fea3832472c774fba1"
    "gl"
  end
  language "it" do
    sha256 "9710fe52b39771c6ea5d888d7f2bc18b8357aec1fd1294069936212c53cf68ea"
    "it"
  end
  language "ja" do
    sha256 "015cbda6f5a38679a181cbb07a6db7040fe42ac9911f9eb1004dfd01cd24259e"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "c64918e21552be34fa688fe4c1dd0ca5f1ac6ecd8a4114d92403bc1dbd8310e5"
    "nl"
  end
  language "pl" do
    sha256 "ae4214ddfb656838189c72cc5ae80558c5276cf4d4f3c540a795de4e3551d628"
    "pl"
  end
  language "pt" do
    sha256 "44339a057bce74917d10de03e36e1a90ee11897718f002d28766304b5e7f64a8"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "7127ebfc6b8c0f218ecedf6637721e06478e6371a9770ea89b85cfe8410da963"
    "pt-BR"
  end
  language "ru" do
    sha256 "dd8249d831b222d713936d9292eaa548f5edf6217d170eccfe1ba89d656d23a6"
    "ru"
  end
  language "uk" do
    sha256 "61ed24a4cc8ef1cd057750d11efb8321431c8f74207cf9070a4c3ccdde16466d"
    "uk"
  end
  language "zh-TW" do
    sha256 "7999532ced3749ba751e6f2448ddb763bda3ea7bd3338fd05ddf00cde4b338ba"
    "zh-TW"
  end
  language "zh" do
    sha256 "c97ed47aba3b2905ddf373b430f6ddfa2a1ac06b3b1e48e00e3ed4f2fa8e233c"
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
