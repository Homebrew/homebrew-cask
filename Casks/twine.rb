cask 'twine' do
  version '2.0.11'
  sha256 '360d7b72b538d622e01d5fdac059bf6ddeac97619fdf5002fae736ca4b4eca19'

  # bitbucket.org/klembot/twinejs was verified as official when first introduced to the cask
  url "https://bitbucket.org/klembot/twinejs/downloads/twine_#{version}_osx.zip"
  name 'Twine'
  homepage 'https://twinery.org/'

  app 'Twine.app'
end
