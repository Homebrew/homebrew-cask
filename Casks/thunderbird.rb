cask "thunderbird" do
  version "91.2.0"

  language "cs" do
    sha256 "fdeecd3b846f927793165a7211d9662201c06f259a4543ed60a46304ec507624"
    "cs"
  end
  language "de" do
    sha256 "480be0ffdde90a8253c0885e01efd26c1f7a97b9a68b2e4c60be3a29b94dc81c"
    "de"
  end
  language "en-GB" do
    sha256 "04c84530284348c8d65699366cce4657c355310299652718da3e7ceb87623289"
    "en-GB"
  end
  language "en", default: true do
    sha256 "dad373100161db7b1b4e7cf16069a96371e42d2e0188e28dbf1465133a0c7590"
    "en-US"
  end
  language "fr" do
    sha256 "e08008d408c2526606d97277061da65c39a66ed76bc678c3f03ae4f18f4c93af"
    "fr"
  end
  language "gl" do
    sha256 "8d4ed126053efe47c483f71be4e9fdcf678207efa20e47c6778b060a37f35606"
    "gl"
  end
  language "it" do
    sha256 "c54333ec52a7888d99fb5ec1afbc5d7109e1510c407c09922627b51e328224db"
    "it"
  end
  language "ja" do
    sha256 "3f1bc28173b2cab07eef2a1fad8731d457e411fa5c25c1f9db1583c533069918"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "5ff8f87e1a4bf73ae24a43d20dc703adf80f30ea2891cc0646b161a36624b7c1"
    "nl"
  end
  language "pl" do
    sha256 "90939e6e61a387166f5074eb47eebe2846887fe765de3dc95fe3991212642ba9"
    "pl"
  end
  language "pt" do
    sha256 "4429ac849083be705ae1919d9978f87d099ef8b51eec1be9ee8617c74945548d"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "8114769e9670b1ff5adb2b73a3156a810c50471f7340a19b5c70a50715943942"
    "pt-BR"
  end
  language "ru" do
    sha256 "59ef5079f8138dcfa340849d288f58d9c2343af172b9487df93ec4b4ce84c698"
    "ru"
  end
  language "uk" do
    sha256 "9701309a25b2054535cd0f2db0656ea705a0436c97df11e6b9f45562e60659f7"
    "uk"
  end
  language "zh-TW" do
    sha256 "afb900f1ade4a70f1dd41173a0453ecf6927b0ceb62e9e601777291e11b266b6"
    "zh-TW"
  end
  language "zh" do
    sha256 "6ab9f17a32d944db505ade1ea08401a14802f9a7b7f290f7ad95c282b393df0f"
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
