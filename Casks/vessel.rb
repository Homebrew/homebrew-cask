cask 'vessel' do
  version '0.3.2'
  sha256 '4865693e76b57f6b1db9c862e4f19f984a665f0c8101ab2c43a90ea3997dc0ad'

  # github.com/awvessel/vessel was verified as official when first introduced to the cask
  url "https://github.com/awvessel/vessel/releases/download/#{version}/Vessel-#{version}.zip"
  appcast 'https://github.com/awvessel/vessel/releases.atom',
          checkpoint: 'e8321d849ffb1bb2c0b154b3095b43201e3de527368cdad185b7a3605563d405'
  name 'Vessel'
  homepage 'https://awvessel.github.io/'

  app 'Vessel.app'
end
