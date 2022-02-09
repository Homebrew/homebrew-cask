cask "thunderbird" do
  version "91.6.0"

  language "cs" do
    sha256 "dd4c32ea197757fc0cd7f10d49bdde0bc5b3a873fd661f71056734600d3e2422"
    "cs"
  end
  language "de" do
    sha256 "082d1f4341cfa783f5771494b5e2e9174b8801d75c9a1c63d2f0cec390993b21"
    "de"
  end
  language "en-GB" do
    sha256 "e104f228a2a64379c26d9864791984bac5fca3cb446d4cbc5e1da6e7977c1dbd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "73937ad5b3556b51d9a7d10eda700030a5e3dc358efa928e5566272c7b57e419"
    "en-US"
  end
  language "fr" do
    sha256 "0161186a38c123a06a71bd3490acae10f46b9cdfe0ce55daa686343f983c5649"
    "fr"
  end
  language "gl" do
    sha256 "80bb8c5a16f8107aa3b9e1c82bad2ffc848d0636ae14176d4836d16c93d9d1e7"
    "gl"
  end
  language "it" do
    sha256 "4126eb7037d751c0bc59a95b4b78795d92ce66b3e243a742d4ea6ac1fb9c133a"
    "it"
  end
  language "ja" do
    sha256 "35e112ff3ae81fdfc69549a6b53b18f7a11eaa33c6f33768deb4392a42c347a8"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "6aa660a2bfb4b876447b1e053a08b9805a25a7b874a2d5ccf07f0484fe4d8a3c"
    "nl"
  end
  language "pl" do
    sha256 "6ca82dfa7e66fcfcaa1855fbf38796a4e3c162fe6a92b00eaa0105181d99db86"
    "pl"
  end
  language "pt" do
    sha256 "33751be38d02b8d9f947e3b9556087523101b8b43f8f06e44d134d60f638242a"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "ca4a01acbef22ccc2dc9bf24be0f20cc6db3ebb2d8a1dece261c8c023f60c0ae"
    "pt-BR"
  end
  language "ru" do
    sha256 "5e5074fbe9203f527aa4442242ab6d61fec436ac81f91e3d7393f1152f869abf"
    "ru"
  end
  language "uk" do
    sha256 "74e116bc78b4be06539c0b3a8e724f7dae357cfd8ee300248788468208944248"
    "uk"
  end
  language "zh-TW" do
    sha256 "45ca554e6bad11041735f6e48869284ed4ad0f6b069b35afea97d62feca0e0f5"
    "zh-TW"
  end
  language "zh" do
    sha256 "c3d0de923a42e480909255cdacd7f97a9c61446af63246fd458e21b34dd56e69"
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
