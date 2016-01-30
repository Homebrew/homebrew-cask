cask 'vox' do
  version '2710.1,1452877541'
  sha256 '0a24e5b119636cc441a91fe88c628e4d3fde249a5b7ee219fdb324d0c956c534'

  # devmate.com is the official download host per the vendor homepage
  url "https://dl.devmate.com/com.coppertino.Vox/#{version.before_comma}/#{version.after_comma}/Vox-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.coppertino.Vox.xml',
          checkpoint: '6b9ca9d542712e78b751efb7a40ca0f23e233681c5c705f18b003dbd2bf2c1ec'
  name 'VOX'
  homepage 'https://coppertino.com/vox/mac'
  license :freemium

  app 'Vox.app'
end
