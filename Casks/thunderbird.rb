cask "thunderbird" do
  version "78.10.1"

  language "cs" do
    sha256 "51a9f8ca38a58c422da88f7b310e4f56c27e7d43d65193b16ddda80b5ff263a3"
    "cs"
  end
  language "de" do
    sha256 "1a027156b75dc69871f069d247f91627b2530d2f5ec50924280c01e499b1d261"
    "de"
  end
  language "en-GB" do
    sha256 "5974c95ef4f375eb279de6b564732e4c1a1d05836eb6af52d15e0603de9f0dc3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d15598e2885a16149449787693aa73d23bbf69535a5c9da1f78069f1d263953e"
    "en-US"
  end
  language "fr" do
    sha256 "4054c20598d1f60c1a68d7c2958dc9f66eb289609687f627f3aac76f816fa94a"
    "fr"
  end
  language "gl" do
    sha256 "e9e2b78672217df7476c5923a8170b1a9179c5fdb9e6caeacdd4b4ba12db3c1f"
    "gl"
  end
  language "it" do
    sha256 "d1bdcf6f64c99e102aac558384627bf26add372e2e3f3060cf3783f035d6b458"
    "it"
  end
  language "ja" do
    sha256 "78111d711d75b019ddac435926d3627e38f1d81ae48ec331df2e41d6e92c99e4"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "44f082ff703f8117908acdd2dd228503a380e294cb22d5f4b4c92e383fbfe667"
    "nl"
  end
  language "pl" do
    sha256 "d1d18fc361224248988ef2f5b9daa450b2b7b5d9e5b4b8b0d8ea5067e2cd2887"
    "pl"
  end
  language "pt" do
    sha256 "0fc38f15bc03778c5439519dbf4ad031381577bfcf5d52eafcd5bbae6e98f54e"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "62449081af40943bb4fe1d59640cc27589d790a61d16270d9fb20ecc16958237"
    "pt-BR"
  end
  language "ru" do
    sha256 "d4ca8eb38a1484ce4133849f63232b114bf0367d6b110dd2b976d107354da1a8"
    "ru"
  end
  language "uk" do
    sha256 "df85e51bacd1bcef22ae27fc1cf4d35cc2bd712b1f795fa2f491caf1635bb513"
    "uk"
  end
  language "zh-TW" do
    sha256 "2338e2516874b1f7b00b9dcf1a2332933a5e939c7b3ad73a1eb950ff0d07e6f7"
    "zh-TW"
  end
  language "zh" do
    sha256 "7f72062b58b4eb97838a26f2c13bc3a68d9555c4aff686dfc00b0ef9e27afce2"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg",
      verified: "ftp.mozilla.org/"
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
