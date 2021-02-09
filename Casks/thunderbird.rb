cask "thunderbird" do
  version "78.7.1"

  language "cs" do
    sha256 "f360c933767025e09ca9d3903c175e2d6879c8941210ff319c6bc2845f19446e"
    "cs"
  end
  language "de" do
    sha256 "a6b672fa8fa625a1dd8c0cf7c868b827ae7026c31fe5b1eba4c596782f78c145"
    "de"
  end
  language "en-GB" do
    sha256 "ef791b5e78b413f755c4106451f6977fa91e93fcac5e22a36724c451bed6c0b7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c1e96d82c2989ee70a388bb1d653cc36a92d00e388554fb1556746f340201d68"
    "en-US"
  end
  language "fr" do
    sha256 "0d12e5db255ba0ef84ffe2c0a7f75dfd43ef63a46bb5aad8a3082b5361634bb9"
    "fr"
  end
  language "gl" do
    sha256 "a4a9bf06ed46d3c618ff3309ae9d8b2d551e15ca674ee2a1bbc9a7c8ac56ea8d"
    "gl"
  end
  language "it" do
    sha256 "e783c3e850973e4f37e13a8fd3d0b4ee2d8a2e6d027b4a043be45a69cb8a8e31"
    "it"
  end
  language "ja" do
    sha256 "f8d2939b190968fd5720f6b8115ccc40ac4c554c5cf4e1ded733422bb635552d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "3ede282654339ce11229db4f3c1a3f6e1c8452a9cbdfa57d8046c21bff0f7c68"
    "nl"
  end
  language "pl" do
    sha256 "291bdd8fa0ff57b780af012dc09c66ff15012de2844edcd619aa6602dbdd93da"
    "pl"
  end
  language "pt" do
    sha256 "1d548b8d169084dadb03fb1c8456edd9b22ba4b9e32eda66e2517a4e9588f6f4"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "67ff06817cd3396b6b1e9a5ec8c8b4677ab8dc8a97fdcdc4e18b2eb766cfa2f6"
    "pt-BR"
  end
  language "ru" do
    sha256 "15d46e2f6d91b4f7f0c2afcafe5085467a3e40ce2f0ab37e2bd5b191c4f72ffe"
    "ru"
  end
  language "uk" do
    sha256 "8ae41019a8df388afa4bc5654b6c6373054913ef7ca166d0ae7bb74bc3cff7a8"
    "uk"
  end
  language "zh-TW" do
    sha256 "5766d7b44dccd590caa03699df9e77180fb2e890fbdca0134e52f6fe06cb63b9"
    "zh-TW"
  end
  language "zh" do
    sha256 "b59f1346b0fe44ea31ccb0de87ba4cfad3bbcd99ee6061e217b5de5de22881a1"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg",
      verified: "ftp.mozilla.org/"
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
