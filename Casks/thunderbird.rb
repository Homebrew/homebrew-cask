cask "thunderbird" do
  version "91.0"

  language "cs" do
    sha256 "d23d04cc5ef0a73a03c3846f82742fdefce39dcc34e33fe56ed153bcd2bf2cf6"
    "cs"
  end
  language "de" do
    sha256 "0ab9f8a155ca9460fb2386541750cbc084cb3898a3c5ae47da359b7b4efd829e"
    "de"
  end
  language "en-GB" do
    sha256 "aefa7fe3cc045f45a4668ff2cfea96a41de27f6fd13b99980ef405ee573cba26"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c19249ce2508735049f9653bb506cddeb9d2a7fbd885b9b23a3a0c95997fe12b"
    "en-US"
  end
  language "fr" do
    sha256 "14b7a60201ba56dc226ee2a37703440380b110d56a30e169cf524b1ff3fddd87"
    "fr"
  end
  language "gl" do
    sha256 "ab57c493c4aa065bb4dce4bf21d9b67e5663be90b265fb2717c3d737393b2188"
    "gl"
  end
  language "it" do
    sha256 "d62b3fd8c981f82bb2ad5976836bd14e945088b53b7b9cfc49d7e9cca123af7a"
    "it"
  end
  language "ja" do
    sha256 "1cac77612fc6e106814e609a7b4d682782bc138ba067054942dd5174377a56a4"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "434d97b028431261969ec0b942850c8baa4a54e80415fc969d62bdb5c92bc68b"
    "nl"
  end
  language "pl" do
    sha256 "d58621c9cc2b3a4ff54017bf1f0ae31a2cee9d3e2d53bb3148993704303d2a4b"
    "pl"
  end
  language "pt" do
    sha256 "baf9e267faf25889fe1ab193ff2116a5452b596009209e2ed019aec9c2a3959a"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "4d3bfb51d63f4ea64c4ff3aa7f4b13923b0aded0d590b09958593e87fae0e2b0"
    "pt-BR"
  end
  language "ru" do
    sha256 "bc2893c1c3a3a12f8b028e47c6cd7134d82fc54c8287ec7d7ec3770d47600a52"
    "ru"
  end
  language "uk" do
    sha256 "40fb357d4324cf70d792d16df9820934773499e1fd6bfaaf1c0113c91be23f48"
    "uk"
  end
  language "zh-TW" do
    sha256 "f056e73e7ba21d30bcd0f9ad2bdd7b6b1ef9bc3f252937eab27e3638353462e5"
    "zh-TW"
  end
  language "zh" do
    sha256 "469be8ca3ad0ca2906f9da882d8b046f2d1c46aa4c2518f64af545b4b97a0dc9"
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
