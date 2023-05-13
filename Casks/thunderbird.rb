cask "thunderbird" do
  version "102.11.0"

  language "cs" do
    sha256 "e5f05e8db26d050eb9feeb20f1b2e52a3cb83db471998881599c813a12823997"
    "cs"
  end
  language "de" do
    sha256 "f3a09d3502fadf3404bf8402d184d1a3fa319b7b9ddd39935b87d6d145d834b0"
    "de"
  end
  language "en-GB" do
    sha256 "5c6fb4b132c63e802491cbd73063c2f3d3920051bfe775468a1a8a91f270541e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e9261b9c7688ee820ecdb10e4beaec281c59f8e7632256442a67a4db4479f2cd"
    "en-US"
  end
  language "fr" do
    sha256 "1dc28786cdde761a66f76d90a91650191b3cf02ed2f497b466908c0512dc5370"
    "fr"
  end
  language "gl" do
    sha256 "2957bc6b523ad21c30af19b344ec7dde58373037f0b6c2194523bb69e5afd1e1"
    "gl"
  end
  language "it" do
    sha256 "a9e5db70171cfa2513f1efea1a5c4572beae1e6732a45726e028ad4aa1e06337"
    "it"
  end
  language "ja" do
    sha256 "e4be6fcb053e8bc0c4f2a6a12f74bdf94f5d6aabeaff58fcaafa0add55ff3359"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ac83158cdf34b2d64574de8f83607820ed005e3655c2c4e887a0ee5de990ff88"
    "nl"
  end
  language "pl" do
    sha256 "2e9cda9efd5dce1c017aedaecfb29cccfa5fd6eba9f322c81424023f31ae19ee"
    "pl"
  end
  language "pt" do
    sha256 "a981a8df7f7c01d3a1c4cc8597db64faec1aa673ff86a9e3e44836072dfef91d"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "17c0a3a199730b5e679d5afa0d08643111aa99e18b2d222d823446607673ca18"
    "pt-BR"
  end
  language "ru" do
    sha256 "1918d5ada077261dfef6daca993310c26a35904af17460d55d20bfda375b8b89"
    "ru"
  end
  language "uk" do
    sha256 "11a5580c17f85dc0fe47ddff14c070a1f425a9750fca294e334182eb1ed4c4dc"
    "uk"
  end
  language "zh-TW" do
    sha256 "0aa7b539f95a3a3c9675c8cab484b8f493af4c698e07a504d6517304d294290d"
    "zh-TW"
  end
  language "zh" do
    sha256 "b9709b391fc85584686c9ea4152b97c5132e4081bb903ad35d97b7489aee89bc"
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
