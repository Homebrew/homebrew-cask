cask 'tor-browser' do
  version '8.0.2'

  language 'ar' do
    sha256 '78f66462f6bac658841f41d33d9ae12c9d8a9223afaeb624f195b4775c6f4049'
    'ar'
  end

  language 'ca' do
    sha256 '6029bdc0d3afce23a6960d90d33924302c4a870353f06b1da4bba35292e9f1f3'
    'ca'
  end

  language 'da' do
    sha256 '094e4b462471f26f71cecada0990d9ddfd43c8e71fa397856049086a5e045e75'
    'da'
  end

  language 'de' do
    sha256 'bb14e7c0f0e78d615c5961412798092b437c151d03d37fc536b556ff1fd84f5e'
    'de'
  end

  language 'en', default: true do
    sha256 '39ad1c1d08090c8dbd870705141341156885810f31d13ee727435e0a3b06bc93'
    'en-US'
  end

  language 'es' do
    sha256 '97c166a813641a2ef47d555474fd6ac36e3eeb8de5dbf7e032844b8ff392ac32'
    'es-ES'
  end

  language 'fa' do
    sha256 'ce16a8c24cc443ead4387158eae95da3cea2dd51438c050d572f49b20b69411b'
    'fa'
  end

  language 'fr' do
    sha256 'ebe04ed10fee2d3fd6e94b0d7a22bb00ba4a87c32653d3f53a1ff5a33892a556'
    'fr'
  end

  language 'ga' do
    sha256 'a8d8c5387b77133ef107c690ef062a30fb21d329865100f35664fa45ca736817'
    'ga-IE'
  end

  language 'he' do
    sha256 'd263bfc4c05aaa02e478cf6990c7044d2d8eef83ed4e99211642475283529592'
    'he'
  end

  language 'id' do
    sha256 '4db5d2ca8bb14aabf5ccae75578421d3516f825c1f63a17a00fd77b0b54abb91'
    'id'
  end

  language 'is' do
    sha256 'f0eb6044022b64cd26f6da422139330e51e1c5a5dea3ea8a2876e8d799325141'
    'is'
  end

  language 'it' do
    sha256 'e2c7d847fdce85e51d2a280b9b7a1af27076cfb77cbb90a503887af094720203'
    'it'
  end

  language 'ja' do
    sha256 'f84f212cfbafae1b8e587366ffbe3a24fa8db89775d7ed9edcbef9cdec684a7c'
    'ja'
  end

  language 'ko' do
    sha256 '185684d207927eabb8e47b06ea54cd138997bd870b25e858fd4acb24904f4199'
    'ko'
  end

  language 'nb' do
    sha256 '818bf4318861b93a4a2f6056cd05e26cbf6c36b034dd8ba6731d252e7f23cff4'
    'nb-NO'
  end

  language 'nl' do
    sha256 '6bc0cf6b5c9b65d30a85be69a5c5a4e74cbfcdce3c9f957091f909b0813eab85'
    'nl'
  end

  language 'pl' do
    sha256 '8d793ea746c172d41656b06139d428c3ce93e2d5f8e779cb90245942bc8386a2'
    'pl'
  end

  language 'pt' do
    sha256 'f122025021aea6b57053aa3d2a51160a983c0ca551cb3f1da7245ee183054ef1'
    'pt-BR'
  end

  language 'ru' do
    sha256 'ed094b4bd3ac8841f236b68bbdf6b4044ebcb1e39d04a8f7785c32fb41eb83d2'
    'ru'
  end

  language 'sv' do
    sha256 '4b926337276fdc9756c00872dbc25d7b3d8b7e3a22f557671884a27514c3fd55'
    'sv-SE'
  end

  language 'tr' do
    sha256 '2c2f65557fccc5baf6e8518c2af65b5baa07091c572a35d3984de7df1b3fbbe1'
    'tr'
  end

  language 'vi' do
    sha256 '6be00be29ceba24513e2591e7559be2541e1c24e5e7017cb790a213432efe336'
    'vi'
  end

  language 'zh-cn' do
    sha256 'bda66a941e5193ca61cb72f8359a8de10d9e8de9e416371362f0593ad2edf3ba'
    'zh-CN'
  end

  language 'zh-tw' do
    sha256 '4f84a84efe73bd8901506f81c76726e942b2ed971dbea7df20b126606591ffe2'
    'zh-TW'
  end

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_#{language}.dmg"
  appcast 'https://dist.torproject.org/torbrowser/'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/projects/torbrowser.html'

  auto_updates true
  conflicts_with cask: 'tor-browser-alpha'

  app 'Tor Browser.app'

  zap trash: [
               '~/Library/Application Support/TorBrowser-Data',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.tor browser.sfl*',
               '~/Library/Preferences/org.mozilla.tor browser.plist',
               '~/Library/Preferences/org.torproject.torbrowser.plist',
               '~/Library/SavedApplicationState/org.torproject.torbrowser.savedState',
             ]
end
