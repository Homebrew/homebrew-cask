cask 'twine' do
  version '2.0.10'
  sha256 '3d073a624bd56817438105732e0e808b2ae9ff5bfebb455b70133cff80b0134f'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/klembot/twinejs/downloads/twine_#{version}_osx.zip"
  name 'Twine'
  homepage 'http://twinery.org/'
  license :gpl

  app 'Twine.app'
end
