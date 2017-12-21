cask 'unetbootin' do
  version '655'
  sha256 'ae400050accf524c30ddee21a4a88ce2f5b27bdf9987e699ef1f67d6997aca5a'

  # github.com/unetbootin/unetbootin was verified as official when first introduced to the cask
  url "https://github.com/unetbootin/unetbootin/releases/download/#{version}/unetbootin-mac-#{version}.dmg"
  appcast 'https://github.com/unetbootin/unetbootin/releases.atom',
          checkpoint: '7305aa4b920ad94f38f28e23b1d10d49a5d4aa1118836e6ffdf03c615146ad39'
  name 'UNetbootin'
  homepage 'https://unetbootin.github.io/'

  app 'unetbootin.app'

  zap trash: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.yourcompany.unetbootin.sfl*'
end
