cask "thunderbird" do
  version "91.8.0"

  language "cs" do
    sha256 "8480b0970910cd55889a561c72701cc6743fcd0ea4a3ad824d24b52b21265be8"
    "cs"
  end
  language "de" do
    sha256 "0c0a6bd28af2cbd10ab7c7999a5775d6b93632727b65d7b806726f035ea56290"
    "de"
  end
  language "en-GB" do
    sha256 "fdeffcf3508356d35a011b1f549d221f7a6adc02e5ef23cfed41985cc5cea903"
    "en-GB"
  end
  language "en", default: true do
    sha256 "97f73333067e37107ba2737dfecbe24038c2d779529f0dccd43e681568902d89"
    "en-US"
  end
  language "fr" do
    sha256 "d207860170ef176aaee8f4298a62bba34db5e624cf1ced529386c5d0bf40ec9e"
    "fr"
  end
  language "gl" do
    sha256 "d94287f98b395fc20276dd48ef66fe2939f8a4b951e674da8c57103e967a6db7"
    "gl"
  end
  language "it" do
    sha256 "50a8e08340b9fe5a2a3d2d45b109df96e6645575bad760169c78f61802faec9d"
    "it"
  end
  language "ja" do
    sha256 "8e29b6949ddaf1f9f9d5b9c3df7aefcf7b0b7699f9cd06e9b341ccba66d33afa"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "fd4afa25a88eb74b090fe4ef006c34fe7ec5c0183c374ddf4e7623ecc85eed46"
    "nl"
  end
  language "pl" do
    sha256 "442a14bcd212e9a3b7e6ab926f8c03c52ab9ef63fa7613ecee53e1652cf84d79"
    "pl"
  end
  language "pt" do
    sha256 "1390c9c57c4b4a017ae0019ffe6f91b78cba8f636b572945ea929c2975a02e1e"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "cac89798f7e48a966b634ffd0b703e844671c1293ab5bbc1668dd09a15f16dfd"
    "pt-BR"
  end
  language "ru" do
    sha256 "c04d435af0fdf4edaae5c4439c69a40b19a13031faf14874fb94b1eb23a49b92"
    "ru"
  end
  language "uk" do
    sha256 "d33d32f750ee40c3f18b44dadf14fc0483cb9037d5b9687b748ad7434e0f4fa8"
    "uk"
  end
  language "zh-TW" do
    sha256 "3c889ef0a34bd075eb7e93a6963b63323ae2f0c3d4ec9da60ec91a58f9c54e58"
    "zh-TW"
  end
  language "zh" do
    sha256 "ebd373d060d590b934582858c6c48c3aa3c6a3dfff4fc7edc8d9b2a189a9a11e"
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
