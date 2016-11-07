cask 'thunderbird' do
  version '45.4.0'

  language 'de' do
    sha256 '31fea94bc6861dbb6e989fb1899d29d54b5a1ae6da50665ae0b922270b730291'
    'de'
  end

  language 'en', default: true do
    sha256 'ebba2f27fcb5f455ea2bea349ac884024d009f9e283f6205fc8a4610640988dc'
    'en-US'
  end

  language 'fr' do
    sha256 '6f6318bb2bb11071e06e83ff52f3fb5b96e2e72b461667fdf173c1c8121d09b5'
    'fr'
  end

  language 'gl' do
    sha256 '4f03e389ce1972db0b9225fd1272b52667ed09636fb83e53c096c774fecdd8e4'
    'gl'
  end

  language 'it' do
    sha256 '56168ea04a98e309e40fa98d72dce19a2f96898c21452fe904f893d22c6c56fc'
    'it'
  end

  language 'ja' do
    sha256 'b5b73d0aa26dea74c7473875e8e112fe5ac4bb57a6d5042376475470154ae076'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '6c1402dd7bdddfe6dfecd96dc48eface9f388bb1798f6a8842602b55bf57450a'
    'nl'
  end

  language 'pt' do
    sha256 '314ec5dd4962acb9d0545fe2817a043aaae36cb1b576ec5083c9ef42cf22b53f'
    'pt-BR'
  end

  language 'ru' do
    sha256 '8b108549253327f4dd64102c182377bfce9b521ecbade02e4cc3cfcf30654f50'
    'ru'
  end

  language 'uk' do
    sha256 '7cc800300dee7298cc2b2b1636f4a5213c15b24add42d928a7306a0d5478e1e6'
    'uk'
  end

  language 'zh' do
    sha256 '2114bc9098a054e0d6ac70173e711eb66e755a37c1f55bc9769efe1800791b3b'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Thunderbird/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: 'd879948f812a61892e6e65c7652d35a8b0cff009efa920ed62f6658cb86d75ba'
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/thunderbird/'

  app 'Thunderbird.app'

  zap delete: [
                '~/Library/Thunderbird',
                '~/Library/Caches/Thunderbird',
                '~/Library/Saved Application State/org.mozilla.thunderbird.savedState',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl',
              ]
end
