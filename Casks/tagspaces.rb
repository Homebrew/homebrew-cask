cask 'tagspaces' do
  version '2.3.0'
  sha256 '1b4823fc7ddae593df58c65f8269563569e57b2edc043861fc574c66e43d9c35'

  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-#{version}-osx64.zip"
  appcast 'https://github.com/tagspaces/tagspaces/releases.atom',
          checkpoint: '933c2a514b6a87d2ebf01e7cf730c6396ab0d681663f34501ff87e85706b4869'
  name 'TagSpaces'
  homepage 'http://www.tagspaces.org'
  license :affero

  app 'TagSpaces.app'
end
