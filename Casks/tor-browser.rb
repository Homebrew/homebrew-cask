cask 'tor-browser' do
  version '9.5.1'

  language 'ar' do
    sha256 'f7f37c4022be66b28cb41077f57de6a167b1b45556f6ae460bbe50b3ce65a458'
    'ar'
  end

  language 'ca' do
    sha256 'b4ad6563239d4d1331c1319f4d54bb1aa0d352f03db1669f4ec4218aafffd72d'
    'ca'
  end

  language 'cs' do
    sha256 '6f9df240fb9c6d0243527567e519364cbe6a07b746b80fbcac2b2a9d01e1738a'
    'cs'
  end

  language 'da' do
    sha256 'e65706f6e9ef5504731937187ffc34ba65289d81d16a1686464126d3d7fac5de'
    'da'
  end

  language 'de' do
    sha256 'df78c9a63b8614f1a539b342897f9107b961ac8158f7f1812dd2db567943bd6c'
    'de'
  end

  language 'el' do
    sha256 '638ec1252d0f9b9ee90434431b1cf0bf4ae8ff9e2db652f7efa8e3ff182e5319'
    'el'
  end

  language 'en', default: true do
    sha256 '2bfed97746abae7ec5c11dad6e1d585a6fa21012a8022bd3b0bd96a2f8e65d2c'
    'en-US'
  end

  language 'es-AR' do
    sha256 'f9355750f3b1770c5daa0df1154c141f683ea661e17955be13df1779f1eda5f8'
    'es-AR'
  end

  language 'es-ES' do
    sha256 '8d2876efc7b60bd17d676ed1c2deb199948b4e00bd73ed7c6656571e0b886932'
    'es-ES'
  end

  language 'fa' do
    sha256 '1544ebc6022571a56ec94d2176362e085b84baf737ed5cc0a48ada239449d652'
    'fa'
  end

  language 'fr' do
    sha256 '6af2446886293b97bb86e4ee88bcbbfbc37d823e36ef917c3f5081666db93603'
    'fr'
  end

  language 'ga' do
    sha256 '76d1ea46fe3b63536116a022182300c12a94ab3dacd01be21421a903918b27f8'
    'ga-IE'
  end

  language 'he' do
    sha256 '008a51b23801e21b911a8c95f29180afcb26c387a1da68bcdcc5f21e7b7b771b'
    'he'
  end

  language 'hu' do
    sha256 '251f138319c6f9c0b2892a374344b24d6bd5673934ba2234998715a059f5ce0d'
    'hu'
  end

  language 'id' do
    sha256 '0cba125ef9631086bf7471d477020ac318190f29fc15a6e79d4b62f8fb8d34ae'
    'id'
  end

  language 'is' do
    sha256 '42e2bf8abeffd1db2e65befec5e7c2414bcdee70cf1a88ccf4d11b120714e910'
    'is'
  end

  language 'it' do
    sha256 'c14d093821c1f00308d6d78775b57b43e6c1b70c01e31c158fcf807e05092234'
    'it'
  end

  language 'ja' do
    sha256 '1147c569bc6e133afe282b1d976ccb37d85b17a9f437aa39b51f9bfa790f4118'
    'ja'
  end

  language 'ka' do
    sha256 '46fec9934dd5b49dbe12090612a3d5c06c846ff3e89735c2cbcce6940e8b770f'
    'ka'
  end

  language 'ko' do
    sha256 '79cdea1b03547ee2c61e1ce5a90fd6c1894e83ea2f822d5da9739ea33857f5b9'
    'ko'
  end

  language 'mk' do
    sha256 'ee24ef612211f555e2f8070b28d2143688b0afcbd4cba7e9b15304ced2edea4a'
    'mk'
  end

  language 'nb' do
    sha256 'b7c5464d18065c5cd26905078f2f58d6c76e492f29ce29b4b8288f1420493bb3'
    'nb-NO'
  end

  language 'nl' do
    sha256 'ccb96fdc7f697b88d06c23b0e402e9b72584d58975385d61a39083e7bd3b9214'
    'nl'
  end

  language 'pl' do
    sha256 '360380c90846c072394b3574e30f91356e05d6fe12b3c9fcc1b080c1f32bbd72'
    'pl'
  end

  language 'pt' do
    sha256 '74792c3a305443ea62544a8981266adb21355b7d974b5250e72b812be13ea30e'
    'pt-BR'
  end

  language 'ro' do
    sha256 '1d61b632a568758a9fd54b67d8ce24fc4dd625823dd5ab31820641e2d74a5701'
    'ro'
  end

  language 'ru' do
    sha256 '4c63440bbda4db935b7a9f48b4ce4d82eb9c34b8acd59377d7dca925771a94f6'
    'ru'
  end

  language 'sv' do
    sha256 'a865a963528339ccc54edb42c581c16d5ae25003d3814f7ed6c022c79928e5c5'
    'sv-SE'
  end

  language 'tr' do
    sha256 'b7c88f69fa062af60be342e0b9a3d7af4e308b8eed0f4f3dfdc35c944c1c0833'
    'tr'
  end

  language 'vi' do
    sha256 '17c11973bce1cce0fb8a20d7913b8ec2afffd50b780878db132d7f2f2ce1e0ae'
    'vi'
  end

  language 'zh-CN' do
    sha256 '5fd3a51e21d6bb6d00f7d6a703f7ef8c2ac3880728405927206240fdf30c75e6'
    'zh-CN'
  end

  language 'zh-TW' do
    sha256 '16ebf606dc3ebab94646f035d6c7b0151043fa8d79c8c47dc6a98d567dbebb66'
    'zh-TW'
  end

  url "https://dist.torproject.org/torbrowser/#{version}/TorBrowser-#{version}-osx64_#{language}.dmg"
  appcast 'https://www.torproject.org/download/'
  name 'Tor Browser'
  homepage 'https://www.torproject.org/'

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
