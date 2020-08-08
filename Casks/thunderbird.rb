cask "thunderbird" do
  version "78.1.1"

  language "cs" do
    sha256 "f52d368bd4cd021cb8a196ed2a3bd021dd5c4d55e622569d408e5ae326c0a199"
    "cs"
  end

  language "de" do
    sha256 "2e853a9956a69fcdbdf9be64061c04a8e30f242c03c427984502c36d6662de25"
    "de"
  end

  language "en-GB" do
    sha256 "ce9a35e21212676ac47e6eac74968eee083e1df981b014177b1c440777a09499"
    "en-GB"
  end

  language "en", default: true do
    sha256 "0716f5538d6d2e43c74ddc32e31f4ef9a7db380026566fff535fc1ac046a277c"
    "en-US"
  end

  language "fr" do
    sha256 "19493d33f08636467004b4cd5560d9e573e78fb16b0461c852a3a002d5d7dc01"
    "fr"
  end

  language "gl" do
    sha256 "1ac573c670427c98bbccfd358df714fc96a4c966cbd0400bf42cb40ef54daa20"
    "gl"
  end

  language "it" do
    sha256 "403b1c2c2e2d884c6cfb0b864770cf08da003a5b50f3fd01622a1bd9e65526a4"
    "it"
  end

  language "ja" do
    sha256 "7353794e920384d99c033b987a381bf8fd5738db8d233277b2587e718a4c7062"
    "ja-JP-mac"
  end

  language "nl" do
    sha256 "dfe237a3c22d934d25296ef7f97ce7a122c8a92ad41aaead7fe2f2e9211aaa27"
    "nl"
  end

  language "pl" do
    sha256 "a9edb70fba0bed8ed7b5fe6c7d57b6318ed719fcbfcc311ee2dc0342a729869d"
    "pl"
  end

  language "pt" do
    sha256 "e13d59bd868c7d1761081ee77696f4d8b17f3ec2cc7030802c421b8fc8d24c02"
    "pt-PT"
  end

  language "pt-BR" do
    sha256 "a2a77fb3201d1e6cc2beb825130e4a43ac2c93b3b3b38134a45629a1c2f66012"
    "pt-BR"
  end

  language "ru" do
    sha256 "f5eb85273099e6e5f810540e6cd666ac7e9de3c4a0aa7bc0b42561c28a3c19b9"
    "ru"
  end

  language "uk" do
    sha256 "b410783a51a443235bc2720a06ee4e46ce5df54f323ae481a7b6977db1856ccb"
    "uk"
  end

  language "zh-TW" do
    sha256 "44c9dc419d2e45b4b642446c0016d1d2b558cdd091932ca347bbd3f124c3144d"
    "zh-TW"
  end

  language "zh" do
    sha256 "11ab69449f24666af49d2aa19e7a6c3fca4f79fdff877617990a649e90e7a0e8"
    "zh-CN"
  end

  # ftp.mozilla.org was verified as official when first introduced to the cask
  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  appcast "https://www.thunderbird.net/en-US/thunderbird/releases/"
  name "Mozilla Thunderbird"
  homepage "https://www.thunderbird.net/"

  auto_updates true
  conflicts_with cask: "thunderbird-beta"

  app "Thunderbird.app"

  zap trash: [
    "~/Library/Thunderbird",
    "~/Library/Caches/Thunderbird",
    "~/Library/Saved Application State/org.mozilla.thunderbird.savedState",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*",
    "~/Library/Preferences/org.mozilla.thunderbird.plist",
  ]
end
