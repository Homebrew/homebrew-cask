cask 'thunderbird' do
  version '45.6.0'

  language 'de' do
    sha256 '38518b2a9a0749754a30f381d557fc66ae4b1c3c370cb26ce9df2823d6cee7ae'
    'de'
  end

  language 'en-GB' do
    sha256 '372193a0bff2ae0ecd5710f0f3321954b0c374e0df458d047a76df2a0a40354e'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '2022553050c87afccacccf34709b01980c6228054492e03952cb2a135c20bdc3'
    'en-US'
  end

  language 'fr' do
    sha256 '19e95e0c3354081443975e68b9d9f85fdda6708317b082cb994edb64962d922f'
    'fr'
  end

  language 'gl' do
    sha256 'd2edb8b52d309c73b49c67ef45d6122039ab44af1d063bc2b415b50710251fec'
    'gl'
  end

  language 'it' do
    sha256 'db18591701a0c7b53eeb4bfcaa8928fb79ac1db7ae7288011ae132b9b3f6f363'
    'it'
  end

  language 'ja' do
    sha256 'a322492b0d94616f762eb5a0e1b3364feca2d779f76294c6b60b90180e0643bc'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'c1ad42221f8202c7d20fe89defe09ddd587525dade17ebc0d98676fb5a61adc8'
    'nl'
  end

  language 'pl' do
    sha256 'abe9d1f702eb4e0e0b045bffb9af9feaa094010f5a05a01c317eac84858ed6ac'
    'pl'
  end

  language 'pt' do
    sha256 '9b3b0aa164b3a6013ebe7e0fa234523b5a9558d129412acad66429e17c948117'
    'pt-BR'
  end

  language 'ru' do
    sha256 'dae64c0cd137da190e1e58790a0dd61fbfe4bd744fa03e4fae855e91d1d3e096'
    'ru'
  end

  language 'uk' do
    sha256 '7ab53bd63fcd25bade0d5f13749a85c949555b1f14b214a1086d5036091635eb'
    'uk'
  end

  language 'zh-TW' do
    sha256 '4a4bb7f8ed810db4ae079fdaf78120ad20965d7de8fe44c39ff23933b45629f9'
    'zh-TW'
  end

  language 'zh' do
    sha256 '83f39422e6e85820da0d80e58624c90f9baa5967d28190db81b720b09c8b9986'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Thunderbird/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '8c0366217a03a7a63c4ec046321a74b8136069051804f58bab2b7e1c3e7c3f0e'
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/thunderbird/'

  auto_updates true

  app 'Thunderbird.app'

  zap delete: [
                '~/Library/Thunderbird',
                '~/Library/Caches/Thunderbird',
                '~/Library/Saved Application State/org.mozilla.thunderbird.savedState',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl',
              ]
end
