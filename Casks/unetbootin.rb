cask 'unetbootin' do
  version '647'
  sha256 '6f0abd2ab696501dbddde135d4709259d6d4ca2de33a54bfb10f51b4d5ffd22a'

  # launchpad.net/unetbootin was verified as official when first introduced to the cask
  url "http://launchpad.net/unetbootin/trunk/#{version}/+download/unetbootin-mac-#{version}.dmg"
  appcast 'https://github.com/unetbootin/unetbootin/releases.atom',
          checkpoint: 'fd308855106d78c0ad2e793b760b6ee07abeef5456d0cbcc2f87236a314bc06f'
  name 'UNetbootin'
  homepage 'https://unetbootin.github.io/'

  app 'unetbootin.app'

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.yourcompany.unetbootin.sfl'
end
