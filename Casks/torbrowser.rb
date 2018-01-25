cask 'torbrowser' do
  version '7.5'

  language 'ar' do
    sha256 'a69a2a9830235e389dd085bc1a022e71d9d1d1a96a0071026c2e0ba8ea4336cf'
    'ar'
  end

  language 'de' do
    sha256 '05db6e85623445458313873ea4f463573a32b6ea7546aa3ace1b0b36cfbaccf8'
    'de'
  end

  language 'en', default: true do
    sha256 '43a8dc0afd0a77e42766311eb54ad9fc8714f67fcd2d3582a3bcb98b22c2e629'
    'en-US'
  end

  language 'es' do
    sha256 '89d64b187d16ecc5137785715c4b691d7297f818652fce1cd6c06c4e45c8f843'
    'es-ES'
  end

  language 'fa' do
    sha256 '035a68014547621ee51e3380ad2fda6111d2088ea0c9f1f6a10acc15ba708a2d'
    'fa'
  end

  language 'fr' do
    sha256 '8e20c2d85231eb088d1f1271ad3796774da32607d196f4b23057a643d1d93dac'
    'fr'
  end

  language 'it' do
    sha256 '07a5f32a5e8b5b72a8608d6c2ee15162234ea15ae85901d79f5a590011f8689f'
    'it'
  end

  language 'ja' do
    sha256 '24a965dd6d70e0f42ed48d8e2260d84230d9c9de5c59ab48d5d1815bf8b1e9e9'
    'ja'
  end

  language 'ko' do
    sha256 'ff23d7c005594817df47bb056075c697db41ec7424dfa59d867632e454365602'
    'ko'
  end

  language 'nl' do
    sha256 '2a86699ff17e1c7a60f15e9a40abf2f4f3043b7c92c76eb6077aeaa71e3f9312'
    'nl'
  end

  language 'pl' do
    sha256 'a09eeae6a875970fb4fd4cca2551f48f7b5e978c5381b1e99fd16b586ba02fae'
    'pl'
  end

  language 'pt' do
    sha256 '9f4b9da5e89b5a754bb97641e18cec6093383e76ed30a8e695211cf0e568afb7'
    'pt-BR'
  end

  language 'ru' do
    sha256 '308ec8c81528ad3bd9cdd40a21ff830cb0acb59485a0a3c620c64b618316f16c'
    'ru'
  end

  language 'tr' do
    sha256 '90b8948894a45709f54adc623c3173a5b3c56b0564881acf9904b31b92b8fb77'
    'tr'
  end

  language 'vi' do
    sha256 '3cdb0c1b22fff901c527f42a932b346099c091c76908914a8017da64585af251'
    'vi'
  end

  language 'zh' do
    sha256 '43d46b8d34d9d3f930ccd97e10af4d10b3a5d8272a67792f7702fe8ecbb4538a'
    'zh-CN'
  end

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_#{language}.dmg"
  appcast 'https://dist.torproject.org/torbrowser/',
          checkpoint: 'f1f3e429dfab01a5e9bc2ca7e4751ad43c9117f85202eef57c15e1364476368a'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'
  gpg "#{url}.asc", key_id: 'ef6e286dda85ea2a4ba7de684e2c6e8793298290'

  auto_updates true
  conflicts_with cask: 'torbrowser-alpha'

  app 'TorBrowser.app'

  zap trash: [
               '~/Library/Application Support/TorBrowser-Data',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.tor browser.sfl*',
               '~/Library/Preferences/org.mozilla.tor browser.plist',
               '~/Library/Preferences/org.torproject.torbrowser.plist',
             ]
end
