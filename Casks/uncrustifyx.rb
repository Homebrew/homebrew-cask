cask 'uncrustifyx' do
  version '0.4.3'
  sha256 '017c0781ce05db59c1a3fe52a140166df55aa2d87286a7cf5ba5e3eb6b06c7df'

  url "https://github.com/ryanmaxwell/UncrustifyX/releases/download/#{version}/UncrustifyX-#{version}.zip"
  appcast 'https://github.com/ryanmaxwell/UncrustifyX/releases.atom',
          checkpoint: 'ce3555ed06c048f9882ba21c6b10fe03b3a2687016788915025a2891b5b683c5'
  name 'UncrustifyX'
  homepage 'https://github.com/ryanmaxwell/UncrustifyX'

  app 'UncrustifyX.app'
end
