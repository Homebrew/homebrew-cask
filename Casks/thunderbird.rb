cask 'thunderbird' do
  version '52.8.0'

  language 'cs' do
    sha256 '627dfaa11f6be408aeedcc2f5fbe8212f479569a8917984a5cfe56cf71a63e77'
    'cs'
  end

  language 'de' do
    sha256 '79838ff7945697f32a2d40aedc2c858a79a2150f6db5fd5f487ad06e17bd570d'
    'de'
  end

  language 'en-GB' do
    sha256 '1cb713964d8344a8fe3fcbf5f3566afea17b6215efb0cd0d57d7aa4fb8a1751c'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'e4c0fed3846e2c34527fa530ec88047d38c03126f44811304c68b2023cec3951'
    'en-US'
  end

  language 'fr' do
    sha256 'a24102f8319cee81b2c787c081734257c5ff7ce31137f30fd8c4b14349a7e68a'
    'fr'
  end

  language 'gl' do
    sha256 'a1379ff0e82ceb12f9c58264948da45831e1225b3e59cae83f5a77e2c254e43b'
    'gl'
  end

  language 'it' do
    sha256 'aa42323961304e209e8f07e6f10f65d4e2d251355a4a9cdd8e070cf8c2f538dd'
    'it'
  end

  language 'ja' do
    sha256 '49a980a1be4ccec1459e856d012fb624f750aaa0f0288bd8baab7ed19fcb5ef8'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'c8491358913c8d88f43af8754d60acbd605b2a554dc7cbe1f795da5cbd596f91'
    'nl'
  end

  language 'pl' do
    sha256 'b14cfc48518604937fa74e978ce6daf027d6f042fa316b63b9bdd4e4126106e1'
    'pl'
  end

  language 'pt' do
    sha256 '0c844cd2f1c48b1a55dad6e31d9c88045ccb20b59a1b9254cafc2a80a9e3e22a'
    'pt-PT'
  end

  language 'pt-BR' do
    sha256 '2cb2938bb390e75f61d0ea9e51908c785becd2cb291975eebc2fb67f989e34e9'
    'pt-BR'
  end

  language 'ru' do
    sha256 'bf8f6a0b326cdcb37d331ef9f5138144fd85b6e3d3ad10170bac9ac389c8d920'
    'ru'
  end

  language 'uk' do
    sha256 'd5903146b4917f83dd91c1f406df954fb3bb77049a429fda2a1e1cb2718bc302'
    'uk'
  end

  language 'zh-TW' do
    sha256 'c155ae3f24e8cd74d4d5d3cf3e53436a15c233dfd6498fb2c336fe3ad180bf53'
    'zh-TW'
  end

  language 'zh' do
    sha256 '439898cf4bcc3e366ad8ea4788638caa5e8c0868ecec8c4817389b884fb3115d'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  appcast "https://aus5.mozilla.org/update/3/Thunderbird/#{version}/0/Darwin_x86_64-gcc3-u-i386-x86_64/en-US/release/Darwin%2015.3.0/default/default/update.xml?force=1",
          checkpoint: '6079a5241a3af0b4bb8726921e53ab043e663f2b4c56f3ebbed327eb72f5b469'
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/thunderbird/'

  auto_updates true
  conflicts_with cask: [
                         'thunderbird-beta',
                         'thunderbird-daily',
                       ]

  app 'Thunderbird.app'

  zap trash: [
               '~/Library/Thunderbird',
               '~/Library/Caches/Thunderbird',
               '~/Library/Saved Application State/org.mozilla.thunderbird.savedState',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*',
             ]
end
