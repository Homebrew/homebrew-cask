cask 'tomighty' do
  version '1.1'
  sha256 'e08afad7ccd3540fb7afd2957ad23809bf17b9812295eaf9b155beca74e3d916'

  # github.com/tomighty/tomighty-osx was verified as official when first introduced to the cask
  url "https://github.com/tomighty/tomighty-osx/releases/download/#{version}/Tomighty-#{version}.dmg"
  appcast 'https://github.com/tomighty/tomighty-osx/releases.atom',
          checkpoint: 'd840c6dbb9a016a8db3e4cd209d0ade84b13864dab3dff9df0f1cba93761fa8c'
  name 'Tomighty'
  homepage 'http://www.tomighty.org/'

  app 'Tomighty.app'
end
