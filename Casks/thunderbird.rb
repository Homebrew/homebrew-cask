cask "thunderbird" do
  version "91.9.0"

  language "cs" do
    sha256 "42795ea79e9bfa57d4988def1c6daa310ade32bfffef8cfecaf65c4a9c99b2c9"
    "cs"
  end
  language "de" do
    sha256 "ff4f4c57f97c236eacd6f37e8cc0887050963046c282e5f0017ab6799cce8afe"
    "de"
  end
  language "en-GB" do
    sha256 "840f7c8a9de81d01ab12da09ddd8453e304b006735eb45f166fbef1e2344a792"
    "en-GB"
  end
  language "en", default: true do
    sha256 "11635636a65d4d1ca07b13d3f74eba751713fc96cffdcda74decbdb945128088"
    "en-US"
  end
  language "fr" do
    sha256 "e2d5566ca6ec9e9ec25e15d77e0845f8e02f047d9952db6e48c092d58ff35199"
    "fr"
  end
  language "gl" do
    sha256 "f5eb8c306d9296d6bb5f24fe8fdf4fcc320a5299a51b755547e45058e0181161"
    "gl"
  end
  language "it" do
    sha256 "841580675dfecb98af213c38a46ea1da1a7c91ecb1dc2195ed70008cf5d530c8"
    "it"
  end
  language "ja" do
    sha256 "761dab659aa322ec41e9b1b826c73f0940bf1eeb1e6533b09931a649bacf7d12"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "9fa05f63b84a4f264fa24eac6226987150a952d45161a8d6ca4945ff6d75f6ce"
    "nl"
  end
  language "pl" do
    sha256 "81ecd8b6fc334e8308a7658612c2e9e26cf24732333a39076183b072afe40ada"
    "pl"
  end
  language "pt" do
    sha256 "586428ef3a42be0e9cce6392346db9c4347fa1485309c5f19a96f25650a14ace"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "c34bcd5d556f790380b0a7591d7dd9598d1d08228dece26a59473028b6107816"
    "pt-BR"
  end
  language "ru" do
    sha256 "3c2de124ce27d2488f8c2626c2cbba3c9505cdb7bac97bdb64a9a0be9fe0174b"
    "ru"
  end
  language "uk" do
    sha256 "3ea2d9d122775fab541fc79210f771ce8c840ce4c3a0db9407985f977bac6235"
    "uk"
  end
  language "zh-TW" do
    sha256 "7c34de14d1847734bb3547b236f4c70299cd0bebc1de809a7ffdde68b618af81"
    "zh-TW"
  end
  language "zh" do
    sha256 "42237f615669aace202f7e081645bd82f9e7157fecfe9a444549ad1465709cce"
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
