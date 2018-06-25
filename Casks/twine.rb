cask 'twine' do
  version '2.2.1'
  sha256 '0282c9e21167c51fb57d1b276447d6560fa22f5489e87aac215a3616edc5887f'

  # github.com/klembot/twinejs was verified as official when first introduced to the cask
  url "https://github.com/klembot/twinejs/releases/download/#{version}/twine_#{version}_osx.zip"
  appcast 'https://github.com/klembot/twinejs/releases.atom'
  name 'Twine'
  homepage 'https://twinery.org/'

  app 'Twine.app'
end
