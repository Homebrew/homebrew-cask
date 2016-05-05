cask 'tagspaces' do
  version '2.1.1'

  sha256 '912e97396cec629a0ed1bd8e50204bafd699e13c18d927c6ce9489648cf17d41'
  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-#{version}-osx64.zip"
  appcast 'https://github.com/tagspaces/tagspaces/releases.atom',
    checkpoint: '131248cf9fab7c55e92223fdc1b4ad4eb5b44229f6fdbb133d485d7717f507af'

  name 'TagSpaces'
  homepage 'http://www.tagspaces.org'
  license :affero

  app 'TagSpaces.app'
end
