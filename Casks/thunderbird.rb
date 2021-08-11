cask "thunderbird" do
  version "78.13.0"

  language "cs" do
    sha256 "e2490c2dbe1cbc18906b0a52aeb648691c34f86578caadd1a5b8ab6a323ef6f2"
    "cs"
  end
  language "de" do
    sha256 "00a03ccee6eb0e4588c4fe06a27e6b5ee1ef58b1068803c893960311c7b0fecc"
    "de"
  end
  language "en-GB" do
    sha256 "0f3ef41162c456ac3b427c8c9cf3c7fd9a1f052b9da5f8ea153672322e1282a4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "81744e36fad04dd98a7158b28eb18b16de43d435332399d077f2fcc14cc7ed0f"
    "en-US"
  end
  language "fr" do
    sha256 "0739268d5e9971fc35c50c5c1015ccd2ab919f07f943e61c23742b4ef41c16d0"
    "fr"
  end
  language "gl" do
    sha256 "f8c3a4f6c6dcc043b97151e399541062b38c5ce07469ead61850593d218f6cf4"
    "gl"
  end
  language "it" do
    sha256 "67dee0a12f478b2c23748f90dafb2a30e5945e13815f68d8a5adf15f726bccd5"
    "it"
  end
  language "ja" do
    sha256 "169be522fc92ac53ed20edcc691a1f030334ebc2efbf6c63a8c829ba8f6f6667"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "b37ecbf1c8cb87cf2e965db2dffc6d58fcee69bf760b1398c850d879ceafaf04"
    "nl"
  end
  language "pl" do
    sha256 "740b1601d38ca9c5b0129e78286638740a477285a84e7d173f9f48cd59ba7a2b"
    "pl"
  end
  language "pt" do
    sha256 "fc5866aee31a5f8def36cb9d0f971e571c9da3f6799a1af4beb5ffe280a79934"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "bfcfaf1246933437bdc3ae81e34057d67c1b54695e961f6f63bc1335ad951f17"
    "pt-BR"
  end
  language "ru" do
    sha256 "1ed3fd1063fae83408039880512ce443ae5ed29f36e0639d453f5da9adffecf7"
    "ru"
  end
  language "uk" do
    sha256 "7528a104c531ba329c8cb57a73a57f044fe553cc36cf2e71f40fee8475a4804e"
    "uk"
  end
  language "zh-TW" do
    sha256 "d2ee055b5940b8fa9633e25c41659572d926de184c58368964dfab73881e9e59"
    "zh-TW"
  end
  language "zh" do
    sha256 "5788110cf912ec334afef7d3ca386bf1b32387e03e526677c784108c2d3e596f"
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
