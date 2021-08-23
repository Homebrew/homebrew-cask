cask "thunderbird" do
  version "91.0.2"

  language "cs" do
    sha256 "77b84b5c348e565bd4ce26646e41339d34dc1ef37c317272a650222a8b6123a0"
    "cs"
  end
  language "de" do
    sha256 "67a55f5b3aae35ef3db3d435950554995b050da43fcf294097bcf36632d3714a"
    "de"
  end
  language "en-GB" do
    sha256 "9ee2ba717c61ae6e3fc5c0d697f28c380883806c762ef97b03973864d36f6cec"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3baf78695006dd0882c90cba1310d7dd370522c7d913b152fb3929c40ca36acb"
    "en-US"
  end
  language "fr" do
    sha256 "482d5e9df3d305419726cf78b417ee866287b61d4e8adcf57417cd702ea1b609"
    "fr"
  end
  language "gl" do
    sha256 "e33b872e41776cc7e0d293cf7ecb035613fb32bde70c23dc0afed30a61b52a3d"
    "gl"
  end
  language "it" do
    sha256 "d11a65341ea46a5c7d94f21e7010e366d0e136bcbc12b8061bc7c8a2ee7b069a"
    "it"
  end
  language "ja" do
    sha256 "f3524e057b539f5c160322dae49df1091a787a1aca1bfade41665ee7ab3d19b3"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "b831f57f43e0f9fce37a36b1a72ef82a6bc29afc89490c2c79a4b8505dfc50c7"
    "nl"
  end
  language "pl" do
    sha256 "0770a545a10aaed5c5e77e8df99058a9a24342e36e8646e0c894c560106f5997"
    "pl"
  end
  language "pt" do
    sha256 "6c28eb5103b3576f792bcdcf5c1075ac25dfecede7a84d5427c257699cac36ed"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "6a31ceddb89cf184f18df7d27c92b415a6b9113d065786826c4627ef0aef85fe"
    "pt-BR"
  end
  language "ru" do
    sha256 "6199180fc1bb6b5c387b6b881e93c8f8dfdb4554ae9c28156dd67709c9d418be"
    "ru"
  end
  language "uk" do
    sha256 "03073799e249580795921eb63e6c225f12b440ab4e4e48519c2e9461f549fc97"
    "uk"
  end
  language "zh-TW" do
    sha256 "38bafde8319cbdf6fa3f621d8c766263463d44c2d5c4b34459ecf55c0566c4c2"
    "zh-TW"
  end
  language "zh" do
    sha256 "4022c7fd84a68846aecdd9d21bdb7fae6b2b10a65d4ea75146c4652dd84a1407"
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
