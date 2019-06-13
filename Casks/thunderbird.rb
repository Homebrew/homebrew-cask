cask 'thunderbird' do
  version '60.7.1'

  language 'cs' do
    sha256 'a1d92c3e84af315f01c565d5c3fb73dfa1026bbd3768d7456f32df275fea9149'
    'cs'
  end

  language 'de' do
    sha256 'c7d0de1c6aa23c6e2acb2056bde3c2ba8fedb7257684b6bddaff50f96513fb94'
    'de'
  end

  language 'en-GB' do
    sha256 'e6c5503f2dff217d5540e81876e029fea59a7bb88e5dafcfd65d442798e79c88'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'cc7e61e75134226354b8c2560321149575ec2a603923007cb1292a1e65ea4c90'
    'en-US'
  end

  language 'fr' do
    sha256 '32ab34bd9ec74f01bec23baad4213863ee712cadeb76d67a753772b862c948d2'
    'fr'
  end

  language 'gl' do
    sha256 '558a1c36c02ce7be7046bdf667cb179bcfbbe7c5ab6fae254d523b88df8e630e'
    'gl'
  end

  language 'it' do
    sha256 '234f16472bdbc55d48832af8c139ca57a5fde87ddb384b6b7803aa3ce07c57b5'
    'it'
  end

  language 'ja' do
    sha256 '83480977eca9297649f10ab6797beebc9f902812b17ec67cd1860ec7afe7c523'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '433d52d5b672d4bc4177d4a6d6682a9d0dba436cf3081964926fd54b06eda9ac'
    'nl'
  end

  language 'pl' do
    sha256 'f6431898e9f30e9264cbaadb91dfa3f1ae46e7972d0ea9ac59fbca7723752c96'
    'pl'
  end

  language 'pt' do
    sha256 'b82a76ed22d80e86b5e8ce0e92745a4718b9db3d2f7a42031b1dd397fd2dddd9'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '38a82859d6b4a9b664be7f9e18310e26dc360cd805d81bbbf80f4cac30ac644f'
    'pt-BR'
  end

  language 'ru' do
    sha256 'fd343eb08d3a77340738653cc8825c85fa6af942e407fd560fce9d2dcb9177af'
    'ru'
  end

  language 'uk' do
    sha256 '191ca7c24abc99b35ba57bedf3808ed6a9ccc805845c2f2afc41849a7f388f0a'
    'uk'
  end

  language 'zh-TW' do
    sha256 'bed39e72f3113e1fb230c643f833e19f614163ea9d3bd949b474fdfa93891e6b'
    'zh-TW'
  end

  language 'zh' do
    sha256 '51ef273654c105dc1c7d984c51db909f209ee0574e428a682a747173222f1af6'
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
