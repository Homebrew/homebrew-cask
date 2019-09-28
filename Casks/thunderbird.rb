cask 'thunderbird' do
  version '68.1.1'

  language 'cs' do
    sha256 '5141f2775766f96d82cc60a0bfc6375d29a39b1a1076b724e28cfdd6a74b69ba'
    'cs'
  end

  language 'de' do
    sha256 'f76c743d9d83d9749b8dc459fa1505f0b7a036ef1a02261978e3e809c4970dc4'
    'de'
  end

  language 'en-GB' do
    sha256 '6d2ec1ac4e2fbb74a59f9f197cee065284d2c15959ca35b795827a4a419c6873'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'f1a00671fcbfe795087e0354d9582847d6d8dddc713dc5a2539ea230c22f1c1c'
    'en-US'
  end

  language 'fr' do
    sha256 'e2b2fb32f9bbc97959bc7dd07f41b23492764e110f516d6150d8f60de1359997'
    'fr'
  end

  language 'gl' do
    sha256 'c21726c405b974d1832ab41ebbd46ba586ba0c6ae7e9f53708d1024841b05ff6'
    'gl'
  end

  language 'it' do
    sha256 'd1b73bc1f33237f84ce2d4b0ad2794e9d8bbd4ebdcfabb3d83fedf237151c076'
    'it'
  end

  language 'ja' do
    sha256 'c8879d6f0d65ac3f98ab35d09d7b6593e5a40135a9e4cf2a6c6280cf7c3b4ff1'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '699fa0f7416a323720170ed3ac7d01f600639efc7e96d0cadc01344a915b5757'
    'nl'
  end

  language 'pl' do
    sha256 '71830ecd48da9b013c8afd2c5a2c0355d5d7923eb58701c5a81db979f8a0815c'
    'pl'
  end

  language 'pt' do
    sha256 '9f9a664cdb70b2897d181abedbdaedaf844e3b0aa864876211ebb8f10a3a4de1'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '6766c95d5887a154cdc7a8a72ccb569f846e2210bce59b960971d342eb8174b6'
    'pt-BR'
  end

  language 'ru' do
    sha256 '0f8a71e0ec5e0c95abeec08b6e39935c1d9cfad3adbd45ae4d670a5b8a661e04'
    'ru'
  end

  language 'uk' do
    sha256 'd3b270d067b17b598d6fe0782f1601de744f2ddeadc7bd789a9749a06ce7ed6a'
    'uk'
  end

  language 'zh-TW' do
    sha256 'b2c35c0baa517ef9e1f75dab99dd23be47389714bbb4dbf0fd5b17b042685139'
    'zh-TW'
  end

  language 'zh' do
    sha256 '0a05925db77d835f12d27182fb1ee8209f559b48de8dd44d36641734b82387ef'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  appcast 'https://www.thunderbird.net/en-US/thunderbird/releases/'
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/thunderbird/'

  auto_updates true
  conflicts_with cask: 'thunderbird-beta'

  app 'Thunderbird.app'

  zap trash: [
               '~/Library/Thunderbird',
               '~/Library/Caches/Thunderbird',
               '~/Library/Saved Application State/org.mozilla.thunderbird.savedState',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*',
               '~/Library/Preferences/org.mozilla.thunderbird.plist',
             ]
end
