cask 'turtl' do
  version '0.7.1'
  sha256 '9d920609ab69196ffd246a8f48d008cad4d4e1cf9a6a178962bf4c556c862832'

  # github.com/turtl/desktop was verified as official when first introduced to the cask
  url "https://github.com/turtl/desktop/releases/download/v#{version}/turtl-#{version}-osx.zip"
  appcast 'https://github.com/turtl/desktop/releases.atom'
  name 'turtl'
  homepage 'https://turtlapp.com/'

  app 'Turtl.app'
end
