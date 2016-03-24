cask 'todotxt' do
  version '2.1.1'
  sha256 '84a45343e9611a1a2e62c6ad4eaa45b9373e2a74490086af548da64ee5e86940'

  # github.com/mjdescy/TodoTxtMac was verified as official when first introduced to the cask
  url "https://github.com/mjdescy/TodoTxtMac/releases/download/#{version}/TodoTxtMac.app.zip"
  appcast 'https://github.com/mjdescy/TodoTxtMac/releases.atom',
	  checkpoint: 'ef8102fe3bd7e8f151c407cf11250a8b942080a22e9effe1c229a47fad5fe222'
  name 'TodoTxtMac'
  homepage 'https://mjdescy.github.io/TodoTxtMac/'
  license :mit

  app 'TodoTxtMac.app'
end
