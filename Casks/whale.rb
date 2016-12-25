cask 'whale' do
  version '0.5.1'
  sha256 '53afc456c0f5fc2dca215439fd4ce556e96b95d70603ba9cbc7b18f254e3868f'

  url "https://github.com/1000ch/whale/releases/download/v#{version}/Whale-macos-v#{version}.zip"
  appcast 'https://github.com/1000ch/whale/releases.atom',
          checkpoint: '60355f839653f8711f096a12e22a3141999e682ebd4a2694464edd3277eebcdc'
  name 'Whale'
  homepage 'https://github.com/1000ch/whale'

  app 'Whale.app'
end
