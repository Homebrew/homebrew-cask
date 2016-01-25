cask 'vox' do
  version '2710.1,1452877541'
  sha256 '0a24e5b119636cc441a91fe88c628e4d3fde249a5b7ee219fdb324d0c956c534'

  # devmate.com is the official download host per the vendor homepage
  url "https://dl.devmate.com/com.coppertino.Vox/#{version.before_comma}/#{version.after_comma}/Vox-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.coppertino.Vox.xml',
          checkpoint: '4f0f130b5ad7360e3a3b128ab955493e6a2019a6cdb0b1bd6003ed6dfa211b30'
  name 'VOX'
  homepage 'https://coppertino.com/vox/mac'
  license :freemium

  app 'Vox.app'
end
