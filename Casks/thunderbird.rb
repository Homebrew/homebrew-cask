cask "thunderbird" do
  version "115.0"

  language "cs" do
    sha256 "9411c7dc35be673aa7ee4344acbe2d062f2243a84d346cfdce247c3ca2e1ca3a"
    "cs"
  end
  language "de" do
    sha256 "14fa725a20ab6133ae36ffa8799ab2527ee5f2332ca13ab815ba51b1e3641f6f"
    "de"
  end
  language "en-GB" do
    sha256 "3a1e9797acdbb95d046d7a3c7dab787220fc12f40bd6136fb702a25039a95bc2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6d3203ffa7976c3f31aaebc32cddcf1afaf4d664c2962a750e3d94ac9fba1aa4"
    "en-US"
  end
  language "fr" do
    sha256 "1dd99d05d247ee877590ae9905ea51b28d924ecf863f3527c99643383e7a7efd"
    "fr"
  end
  language "gl" do
    sha256 "c58dddf42a8691082f6c4b590e8d5785df1a83b11cc8f21c13d9a59633b62eb7"
    "gl"
  end
  language "it" do
    sha256 "fd4a5db7b5fd7edc95f2fb95e8fa21077cb79a42c880bbdca2608594e72d5b9f"
    "it"
  end
  language "ja" do
    sha256 "0c724958e713baf56bde821ce19ae54bb775a027a9c3ecfa682793be5ed90e78"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "b61639e29fbdb6d8c886ee4371dca73669e0b8b305e99da47c7309f678d47bd9"
    "nl"
  end
  language "pl" do
    sha256 "0c05cf7db422468752d41a94a3af429b858e87d3dd2f6b530aa3c476403a54b4"
    "pl"
  end
  language "pt" do
    sha256 "a71dfa826ab6228417e95cf93ddf970ed198820a1da1ef85e38c8a7a5d6bb31d"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "9eb5dcf30d430fafcd4c80c97c2e9c82da435ae77e9fb27618e639a038d11677"
    "pt-BR"
  end
  language "ru" do
    sha256 "e302001c40524ea98906b87a407adb68d632ccac64bb0bf3ee2386a673f3c1ea"
    "ru"
  end
  language "uk" do
    sha256 "ea5b31e0185afa0e10fc39f84309a5e2a91393d3f3ea811beb184fe2af8bcbd8"
    "uk"
  end
  language "zh-TW" do
    sha256 "5ff93624b0d9f09e99013762fc8444db6a30dcdcb00850c0b1ec846810a1123f"
    "zh-TW"
  end
  language "zh" do
    sha256 "ced8d73e82735a6639e7a6bbb9f3557a07c9dae57d633e2860186c48dac37fa1"
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
