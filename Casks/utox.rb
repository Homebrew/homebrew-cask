cask 'utox' do
  version '0.16.1'
  sha256 '722ef3e8d1145b7746db6544ccb50a85558da93e0d39a588223a4489479fd85d'

  # github.com/uTox/uTox was verified as official when first introduced to the cask
  url "https://github.com/uTox/uTox/releases/download/v#{version}/uTox-#{version}.dmg"
  appcast 'https://github.com/uTox/uTox/releases.atom',
          checkpoint: '762ca9b3d6015647546bcee5ca8859ff3b4f4f281373149511229b860413d651'
  name 'uTox'
  homepage 'https://www.tox.chat/'

  app 'uTox.app'
end
