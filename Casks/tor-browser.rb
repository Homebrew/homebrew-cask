cask 'tor-browser' do
  version '9.0.4'

  language 'ar' do
    sha256 '435143ccf5012de8d7bfbd9ab00b81e850f145f1c19c27f16af2917e05230d13'
    'ar'
  end

  language 'ca' do
    sha256 'aa2cb5d1753dba792ce66504108f613387183d08ec90dec9491e5e3b381523a5'
    'ca'
  end

  language 'cs' do
    sha256 '2d2b18001d97983b976aeaed975f70d075100ab018fb84f147ed036296a06092'
    'cs'
  end

  language 'da' do
    sha256 '599103b8b453fd071270bbf63c223b34e97550e895f1d429fd0740e95ef3411b'
    'da'
  end

  language 'de' do
    sha256 '74e40b1ab3c31bb31b5502d6b7f1cb06d1fb855b6a690bc8155f5b87770870ab'
    'de'
  end

  language 'el' do
    sha256 '200f4872805d36b24714caeca32d484ed800b83d7c086a1d357efc8ad7703fc3'
    'el'
  end

  language 'en', default: true do
    sha256 'baa0f48374e00721de4839f46b7e160423553c6b4f2560c808737c7ac6b912e0'
    'en-US'
  end

  language 'es-ar' do
    sha256 'd1dd42bff9efc0c22af924d9f83f9f3b051e3036b6c39e5e044ea2461f19689a'
    'es-AR'
  end

  language 'es-es' do
    sha256 '41499afe987b4ddde153b5a5f8b63d4036c7908e3ddf70d762a724eaeb58d7d3'
    'es-ES'
  end

  language 'fa' do
    sha256 '50e66a7a5c6c19e89c06182ee3fc73a4041db148437446af69aa3db9c2f12ea4'
    'fa'
  end

  language 'fr' do
    sha256 '4b3d89936453944e2d41ec3636a267762566c09475e2e9519bce1be0fb1725af'
    'fr'
  end

  language 'ga' do
    sha256 'd921f8908ac8196bd443219eb78e3ccc6da1ac86b2b8534e31f54ca97ff805ca'
    'ga-IE'
  end

  language 'he' do
    sha256 'e31c509657fedd7c36e978c2c1e08de464c30d10887c082b82cc694ecb9c7c3b'
    'he'
  end

  language 'hu' do
    sha256 '158bc88b50f0d74082e620ee7534712465c56822dcb3f2ca485c763127389267'
    'hu'
  end

  language 'id' do
    sha256 'f21406d1bd4e921a7f14433f4d8ce51a841ab95a0dc4e8fbac4a1845d3b233a3'
    'id'
  end

  language 'is' do
    sha256 '3cb9104f5d88248c32d6ac16d7b93c16e038656a654b252bed09df0d88ea187f'
    'is'
  end

  language 'it' do
    sha256 '42735a9fe568b281e11444170fab40c35797cfdc0688b379f4382aa50f2ecccf'
    'it'
  end

  language 'ja' do
    sha256 '455047dc15445b3323163af26b4b452ca4b1c14caffbe7f54bae2b7ec83035ec'
    'ja'
  end

  language 'ka' do
    sha256 '40aa77d85103fb53f0b81ae86aa9105d891ce5acc05676064f4fb67eed2335ef'
    'ka'
  end

  language 'ko' do
    sha256 '877cb45f0714e81b6771e78848961c53c5664ab19285778103db87a96973c13d'
    'ko'
  end

  language 'mk' do
    sha256 'f360475cc5b5bd65e1112efd4a789150b81b5f63733111e434f661b98bb2a5ab'
    'mk'
  end

  language 'nb' do
    sha256 '28feccdf127ee9bbcf80864e31b05810ccbb46940653dc0c538b7b19042eae26'
    'nb-NO'
  end

  language 'nl' do
    sha256 '7d308a6b59d34559c02231c6f3036c52e08286b2f321ee8c16bc47944cb692d8'
    'nl'
  end

  language 'pl' do
    sha256 '07ffffad5c9bbe16a858901888e0e3e09d11bb28333996173ea81eaade7dd51d'
    'pl'
  end

  language 'pt' do
    sha256 'adeb09106ab809155b647cd75924f9985acd6b5f27a0534181044ee46447b4f8'
    'pt-BR'
  end

  language 'ro' do
    sha256 '1ccb3201f0fd074269fd7167b9ef703020728c54282b4935031b3f93b3fa9063'
    'ro'
  end

  language 'ru' do
    sha256 '4d3df82ee8433e803902f263c495a60e7191916d6469ce4829f6b58187333151'
    'ru'
  end

  language 'sv' do
    sha256 '99289d0af616222ba8c295d5bf9f5d53120f00797a3e1a6a8de091ee02a8b339'
    'sv-SE'
  end

  language 'tr' do
    sha256 '62a25ba2ebf0648ca8d94ae0bb837d9792b7513bb74d98a70cd1998912d49ed6'
    'tr'
  end

  language 'vi' do
    sha256 '4f2ddb36ac280bc70268901226e004ea21efebfe90280f5723ad176ba8719cd7'
    'vi'
  end

  language 'zh-cn' do
    sha256 '1e0298651affa64ebe17adc742972750a61850da168ffa66f5e2d655099b6f57'
    'zh-CN'
  end

  language 'zh-tw' do
    sha256 'be117e9ddd2747eb57c14bdea4bac2278055f7689bc5c7bd4a45753d4e3b6fc9'
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
