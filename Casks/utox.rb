cask 'utox' do
  version '0.8.0'
  sha256 '334a26e2979229239fc620c70b61c9283b96a68e5233dd06c5e4d8fc635142f7'

  # github.com/GrayHatter/uTox was verified as official when first introduced to the cask
  url "https://github.com/GrayHatter/uTox/releases/download/v#{version}/uTox-#{version}.dmg"
  appcast 'https://github.com/GrayHatter/uTox/releases.atom',
          checkpoint: '4f964099551dbd1db6d551f08b421862b185a3c54a5b91f503408c0c8289d331'
  name 'uTox'
  homepage 'https://www.tox.chat'
  license :oss

  app 'uTox.app'
end
