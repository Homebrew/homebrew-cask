cask 'vessel' do
  version '0.3.2'
  sha256 '4865693e76b57f6b1db9c862e4f19f984a665f0c8101ab2c43a90ea3997dc0ad'

  # github.com/awvessel/vessel was verified as official when first introduced to the cask
  url "https://github.com/awvessel/vessel/releases/download/#{version}/Vessel-#{version}.zip"
  appcast 'https://github.com/awvessel/vessel/releases.atom',
          checkpoint: 'eed47ee87455b8096b127fc21903aface6f597750ed856d441569450adb4f38e'
  name 'Vessel'
  homepage 'https://awvessel.github.io'
  license :bsd

  app 'Vessel.app'
end
