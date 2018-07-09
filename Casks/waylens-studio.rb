cask 'waylens-studio' do
  version '1.4.2'
  sha256 'a5870a7334a73b8f591687e6ee080f363823984e345bea69da37a2829284e06f'

  # d3dxhfn6er5hd4.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d3dxhfn6er5hd4.cloudfront.net/software/pc_app/WaylensStudio_for_osx_1.4.2_1529655355963.dmg'
  name 'Waylens Studio'
  homepage 'https://www.waylens.com/download/'

  app 'WaylensStudio.app'
end
