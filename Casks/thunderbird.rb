cask "thunderbird" do
  version "102.5.0"

  language "cs" do
    sha256 "4cd970bef6030540180dca229ae8ea632b64822119421f3b1cdd45519a9a30d8"
    "cs"
  end
  language "de" do
    sha256 "d71ae6d6946a8ffacc96c2494d9f9ed633a6f4ce3322c0a0c108065d07a8a9e1"
    "de"
  end
  language "en-GB" do
    sha256 "ee1979c203881c5a97a953f7b70b88a35d6becc25e5ac44dc40aeb291f010576"
    "en-GB"
  end
  language "en", default: true do
    sha256 "71048994210ade890150919b653a9741d8654d5c498c230f61a86fd59d22401c"
    "en-US"
  end
  language "fr" do
    sha256 "c812a90b2de12cfc188f18e18c202056db7751411ffd3b55565d8229becd14b6"
    "fr"
  end
  language "gl" do
    sha256 "4af4a49814ce0bcc7bde7eafa498d5d0ba712c3c8be91b668fde74fd00d7cd27"
    "gl"
  end
  language "it" do
    sha256 "cd0fbf5445f6331d75dd7d7004c25f21ad7251bc337fac4bf7630c63b562ecb3"
    "it"
  end
  language "ja" do
    sha256 "185c397764d362344f58b449ed8596f035ae809f20c98f0f0e8f5cfbe1befb6c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "bd677a177b9a6358e02f530f6f2471864c3d3bf3f7e3cb9038ef97a9a8327f8e"
    "nl"
  end
  language "pl" do
    sha256 "72c81a01ece5186ed11335be831c1cc9f0dbe4841fa6fbe9317a0bea418c4a89"
    "pl"
  end
  language "pt" do
    sha256 "59de5ea852de32893ebc15bee9349b1664a30af310498c1e067bb53233768771"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "1fde1c746db4bd37836cdca7b1ccb064b0107613f8e8d616f5929a5f7112d945"
    "pt-BR"
  end
  language "ru" do
    sha256 "d63673b1b9acb5e140a8eae3cc2ed117bff2650baa98fa7cfa9486e2129f5e95"
    "ru"
  end
  language "uk" do
    sha256 "4abd8857ca9dcfd0028300ef7aab409cbac891f6bc270f29abde53cb685c12ea"
    "uk"
  end
  language "zh-TW" do
    sha256 "378307b9797a06872aea5fce4c241da32dadbf44f63e6048a2712d2f700acddb"
    "zh-TW"
  end
  language "zh" do
    sha256 "21aac1ab18b5681fd5e512642becd38924bc9b4316771cd4574d36569e6e4164"
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
