cask "thunderbird" do
  version "78.5.0"

  language "cs" do
    sha256 "deb2aaab3153acb0cd9faadbf10f5b2856825bb8c6a277ddc67415674af25d5a"
    "cs"
  end
  language "de" do
    sha256 "2cb1b2c89d96f229fec5a4dc021405d7bc53be680d406f120daec3475c3b8054"
    "de"
  end
  language "en-GB" do
    sha256 "38a5e91b4204ab24359d0acf5d64067b2ba420b4717e264e5fdec2226bdd6c14"
    "en-GB"
  end
  language "en", default: true do
    sha256 "952745fcdc7a25d66c476073209c34ded11df70fedd8310b2fca5fdaf8d54ed4"
    "en-US"
  end
  language "fr" do
    sha256 "e0f53a6d1581784969eb5f3c5778b527b0bf271d9e5cb2237eca5e5298c72baf"
    "fr"
  end
  language "gl" do
    sha256 "76605f802b770f96f1c2a508ce26c0b2b61658d8c0c0d8b5ae46975100bb9c2c"
    "gl"
  end
  language "it" do
    sha256 "66594f1ad902051ffa39edf1d5c22d90798c2f90e4368f10c288b22681c6d55c"
    "it"
  end
  language "ja" do
    sha256 "a61c6d8c4da12518a81301279eac9120ce923538a430c108a690812feb3a25f6"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "800c9eaf99495085fb8060a6ea2d1976130eba9f187ef13cc7705b4370f6244e"
    "nl"
  end
  language "pl" do
    sha256 "4afca98483db3e5e8e924d41069548901584f8f2caa96ea78a0fe4ecedb56542"
    "pl"
  end
  language "pt" do
    sha256 "f68f89e6b02bbb9fd76d9ae87bfedd232aad739abed0f9744af0e4a353383b16"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "d4d56b2011efdafc9ef46cea929e39d1a148dabea757b6abd2067fe6c38374b5"
    "pt-BR"
  end
  language "ru" do
    sha256 "1019f0187e882ea2893d48c89d3d58348125d74c8a0818be1e7769c91c10e73c"
    "ru"
  end
  language "uk" do
    sha256 "261f058277018e8364e9e684f988a101b2af95cd58be633309db7b6de8d757b8"
    "uk"
  end
  language "zh-TW" do
    sha256 "514669bba1e6b47889ce065fb106bb4cb13d6f1688696cb64c1b094b7ee75033"
    "zh-TW"
  end
  language "zh" do
    sha256 "4d95e73455453e81cb12e60a8ab8ee65edd575ed09ecfcf00beb6fd405a26032"
    "zh-CN"
  end

  # ftp.mozilla.org was verified as official when first introduced to the cask
  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  appcast "https://www.thunderbird.net/en-US/thunderbird/releases/"
  name "Mozilla Thunderbird"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/"

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
