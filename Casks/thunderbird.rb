cask "thunderbird" do
  version "78.9.1"

  language "cs" do
    sha256 "4ff5fbf5026195814f9363fd729b84ff1ffc49dbb3ca4677b4c7f3bf9d8030ab"
    "cs"
  end
  language "de" do
    sha256 "193ecaa1e5d73f3866d936cfd1246b7da050db91828080d63a317c1ed4a2e4bf"
    "de"
  end
  language "en-GB" do
    sha256 "5b9eed8f4ef03c6510fbd52bab58f3957b89ffee90d3a7da82bb1eba2c1cdd59"
    "en-GB"
  end
  language "en", default: true do
    sha256 "758702aaf378c17ad77d28b9a1d59001566f01dd65bf3dba17e6957d78582303"
    "en-US"
  end
  language "fr" do
    sha256 "def9c54c2614c27eabbf9f52891f1d95cb9c4ed97241a2168c2d7cb9eddb8757"
    "fr"
  end
  language "gl" do
    sha256 "9eb7cb76753baecb7da546a419b00cf6693ed728d7afc5b7a0fb1aec4bb2c512"
    "gl"
  end
  language "it" do
    sha256 "ae6390a697d974c037945395cbb106031d24b3c32542bd16c66f626597066887"
    "it"
  end
  language "ja" do
    sha256 "6f48c4e5ebd3d13772d46ebd8e41bd3f2fad4ad3552034d486470b89427febde"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "71704777fc68271c35f7cc4cecdc3bec6df3f661811a980c06ea295d765c7923"
    "nl"
  end
  language "pl" do
    sha256 "296a6ff6a3faea90ea5096ba5cdbc576d09ec1761b00e606fde395274c63861d"
    "pl"
  end
  language "pt" do
    sha256 "580f27772755d9ace93feb50659dba5e61fc22d29f579d0ad6c2d257335b2286"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "2abe47d9ac9c53aca884e30bd8b4c09df687a8003e992dd3259d4e201a05af36"
    "pt-BR"
  end
  language "ru" do
    sha256 "32aa82dd64519ff5ce072581e070f8d1c118f42f8138fc6163686cdd45224380"
    "ru"
  end
  language "uk" do
    sha256 "5e5fead0702bd42776f5161013d5332ffa805a92daafc0905e43e4ad82da1cda"
    "uk"
  end
  language "zh-TW" do
    sha256 "0a239cd6c98785d34f0b4e5470f95369a701827b3676e636ff82ee0fb23bae88"
    "zh-TW"
  end
  language "zh" do
    sha256 "d2e01c311f8abe0f84f31e623e838849da94a5d8f96db34c7fb8a3e2ca55f2f7"
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
