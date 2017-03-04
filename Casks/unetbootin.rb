cask 'unetbootin' do
  version '625'
  sha256 '4568b7b0cef1c240a16b6e03cb5f2cf19f50385645abd82c9206db7aff7d9ddf'

  # launchpad.net/unetbootin was verified as official when first introduced to the cask
  url "http://launchpad.net/unetbootin/trunk/#{version}/+download/unetbootin-mac-#{version}.dmg"
  appcast 'https://github.com/unetbootin/unetbootin/releases.atom',
          checkpoint: 'f9e92d09e934f9ed61ac373f7ec4a9659f8917dbe5370964185bf9a88c31ca86'
  name 'UNetbootin'
  homepage 'https://unetbootin.github.io/'

  app 'unetbootin.app'

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.yourcompany.unetbootin.sfl'
end
