cask 'todotxt' do
  version '2.1.0'
  sha256 '9f58cd655a4f8711ac6419038328a99a631944a17417b457254412996749a393'

  # github.com/mjdescy/TodoTxtMac was verified as official when first introduced to the cask
  url "https://github.com/mjdescy/TodoTxtMac/releases/download/#{version}/TodoTxtMac.app.zip"
  appcast 'https://github.com/mjdescy/TodoTxtMac/releases.atom',
          checkpoint: 'ef8102fe3bd7e8f151c407cf11250a8b942080a22e9effe1c229a47fad5fe222'
  name 'TodoTxtMac'
  homepage 'https://mjdescy.github.io/TodoTxtMac/'
  license :mit

  app 'TodoTxtMac.app'
end
