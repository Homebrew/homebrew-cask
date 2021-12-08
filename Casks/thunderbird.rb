cask "thunderbird" do
  version "91.4.0"

  language "cs" do
    sha256 "fb8ea8f4be27f2dcf0db5910bd7c707132e3679519ed4b1e1cda46e4dc31367c"
    "cs"
  end
  language "de" do
    sha256 "4648e9235ace9650df2a5eddeabb22c25e31f60c1666aa07d73486dc0cf3aa5a"
    "de"
  end
  language "en-GB" do
    sha256 "3bba0b43ebd32e8348041d6e433cc816508280876a3b07742066437578145fcf"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2b18d876af99f9179601e531c272a941afc493b8c42e326d106398edd96d9f1e"
    "en-US"
  end
  language "fr" do
    sha256 "a0b07bac2ae9c793be4e8b4c6fb30b6c39a55d2423d3105be45aee74965f0b56"
    "fr"
  end
  language "gl" do
    sha256 "212f5f2453a1590d968a955769f688f5913eb73f40105b21ce01dd576137854f"
    "gl"
  end
  language "it" do
    sha256 "4ebc2bffbfc9c42d26c5045951f8e371c1c0c6ff276501da323121c9990e0b73"
    "it"
  end
  language "ja" do
    sha256 "af636623281cdf2d5460b3c4d8134e6754da30e2d9aeeb6d4ae1ea91ac81deae"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "6c68deda9fde897fa600a460cdd4971a66310eb9d4f63cc2ff8f2226a6409ade"
    "nl"
  end
  language "pl" do
    sha256 "053ed1a41738f784ee7739f8a86897cfb633c988753c2dc89030970ad60909d4"
    "pl"
  end
  language "pt" do
    sha256 "07520809af2e245cf9db04eaec7597a9aa6ded5dcee8d29c204cf654b96e534e"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "e7a4df70006f41fc3c2a7b018c2e62766db537ba0ff0810f3b5462467a325d7b"
    "pt-BR"
  end
  language "ru" do
    sha256 "d126b76738e215ae0eeb39c86b88e27289fa35ee47a14119b8ab721fdf8ff976"
    "ru"
  end
  language "uk" do
    sha256 "5f53e4614e25218d7136cfca42517d3f945c629854540f4ac0d46cbcaeac7795"
    "uk"
  end
  language "zh-TW" do
    sha256 "7dba652744bbd32d1c60370548eb7d883590a29e02173df659196f7722db6b1b"
    "zh-TW"
  end
  language "zh" do
    sha256 "3d9e3bad1759fa6de42f2cb49ff87dd748a247d3000918a2d9e56b872d1edd0b"
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
