cask "thunderbird" do
  version "102.4.2"

  language "cs" do
    sha256 "243ae673e0b94ac1b6f6c9b946a1addbce3628bbfad1e0bd5cfe16510f40a049"
    "cs"
  end
  language "de" do
    sha256 "a0b8ba47297646c0c6bb7f45dd7a3f6947f62b6966cc1989805427533abb467c"
    "de"
  end
  language "en-GB" do
    sha256 "b7a7e0efe71353979630c21b19563e4abc640851ac86fbb7a2be9cab1be7fef8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "16160a9f5e29426fa3c2083f1fd5962c629db9b28105ad0027faf4b427defe76"
    "en-US"
  end
  language "fr" do
    sha256 "a23c9a6903825b97d4dc8810e33cd0f2438cb4b0296f3ea98b7eab454090c19f"
    "fr"
  end
  language "gl" do
    sha256 "9951b253b09a3fa0a2d75f031bd41bf1708053f3dd4a93f9369a7391902354ae"
    "gl"
  end
  language "it" do
    sha256 "94f6e39a416a4ccb82156822f14c22714aab2003ce059ace03fafdd54a177e04"
    "it"
  end
  language "ja" do
    sha256 "561342e1bb35fabfa51933ae25dd291191756e8700d4ab17b6ed9b5bc14c8f91"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "5426f9692f9ccf1584189829a3923fcefcb578aeffab5d3eaede10e8b1fc86ee"
    "nl"
  end
  language "pl" do
    sha256 "c9caa54aead334f90bbbf826c8716a7fa98e282a9a8270c935a753958eb42b6f"
    "pl"
  end
  language "pt" do
    sha256 "f441c96106ec63ba345957dce264dbe2a8312373f20e26b2c69056ed06cdc708"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "2bdd0fa1aa49888af97bea5b0c82151603dafa28651c88d098134c5e38cdec14"
    "pt-BR"
  end
  language "ru" do
    sha256 "8685d82b0f3bcc904eeceef84f2dc7c8ea3fcf976389a7949a8b0d2d3af05c15"
    "ru"
  end
  language "uk" do
    sha256 "fb7a51bfa1ac39b5633efb0b3240b306d0fce4abb93a6a991c88399d4bbd3248"
    "uk"
  end
  language "zh-TW" do
    sha256 "7891b532eff776263ce950e647a0d6f8dd11075ad125b61b74390412017d38b9"
    "zh-TW"
  end
  language "zh" do
    sha256 "3b2d83266f181fa291b81829d8a41a4b60bf0f7231124299c28f2f0f8029bc84"
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
