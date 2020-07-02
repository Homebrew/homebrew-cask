cask 'thunderbird' do
  version '68.10.0'

  language 'cs' do
    sha256 '7abdcb0d920841d45ead27780cead28bdc4f81ab7ffa99ac05100ed8cb1c2da8'
    'cs'
  end

  language 'de' do
    sha256 '91cf5144eb40d6b5807a64a7755e3f4685c68c98ac569207fd5edb358304cd15'
    'de'
  end

  language 'en-GB' do
    sha256 '3d7e76a4e35d536e3dfad882a8d9f6d8f53646117e447958def2a656e8b8641c'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'c6f689c4144a4f0a0c964fef8a2186dbce2c30b413327005e923328af4c19e22'
    'en-US'
  end

  language 'fr' do
    sha256 '1a3e695e44536e8789536417ccfa202f02c5a2d628475656568e3938a5651544'
    'fr'
  end

  language 'gl' do
    sha256 '3d4187b04b5f9f18523e1eac6747c54ed884a9a7719f25a616e8c0c2b134199a'
    'gl'
  end

  language 'it' do
    sha256 'bdc731c5d1abe67806564ad6a197b8a363fe5112bd4f4b7fefe196160b2b5d2c'
    'it'
  end

  language 'ja' do
    sha256 '28789f7f6dcd334c7bfd6bcbd719a47ca50870db15c95114172f7b64680d1132'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '4e0a2718f9f6df927541094fe4cf8697009d8a01f45e593f43428a13f59a1f8a'
    'nl'
  end

  language 'pl' do
    sha256 '75dd510cd114747a69601b5696bc9ed6f6c43bf40482de06b3370e447aa9fa85'
    'pl'
  end

  language 'pt' do
    sha256 'a6af0364259249fe0088a075a3dd45b21362bab09e428b9e90800c791ed3a167'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '1aef76e96323f0406fa45f8570ffd12404689aa391192a947fdf3243e717775e'
    'pt-BR'
  end

  language 'ru' do
    sha256 'e946f9e540426ceb1435053083ce76c1056c639f88a7942c4dd5c88aa64f4035'
    'ru'
  end

  language 'uk' do
    sha256 '569dd260a11dd6c5276d4c244e563507a43f9f70ce28c4bb5210cec23b9e3138'
    'uk'
  end

  language 'zh-TW' do
    sha256 '08aedb5001e8d6859c7bd96086ec02258e81d326984bbea704dcf31e1c6f587e'
    'zh-TW'
  end

  language 'zh' do
    sha256 '01236884f1511ae9562cea03c18ef37a874315a0059430fcddec75241fa35111'
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
