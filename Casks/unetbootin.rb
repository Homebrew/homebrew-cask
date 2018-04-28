cask 'unetbootin' do
  version '661'
  sha256 'b028a512515d6d8019c53536ec55e824cc1a0d89eb1fae9609d0e9d4385ff4b5'

  # github.com/unetbootin/unetbootin was verified as official when first introduced to the cask
  url "https://github.com/unetbootin/unetbootin/releases/download/#{version}/unetbootin-mac-#{version}.dmg"
  appcast 'https://github.com/unetbootin/unetbootin/releases.atom',
          checkpoint: 'd5ad9f2962f180e80c4e3459479a0d521a87169b7c4e402a4bc81076dd4ab676'
  name 'UNetbootin'
  homepage 'https://unetbootin.github.io/'

  app 'unetbootin.app'

  zap trash: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.yourcompany.unetbootin.sfl*'
end
