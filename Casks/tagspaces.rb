cask 'tagspaces' do
  version '2.8.0'
  sha256 '840f76b0429390c5a78600802a4974093e8f137ba9c0acc316e62d74ae92d551'

  # github.com/tagspaces/tagspaces was verified as official when first introduced to the cask
  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-#{version}-osx64.zip"
  appcast 'https://github.com/tagspaces/tagspaces/releases.atom',
          checkpoint: 'e601645ae85002fad000f8cd4295c4a47fe37863cb43a161afc7e8bd41322a7b'
  name 'TagSpaces'
  homepage 'https://www.tagspaces.org/'

  app 'TagSpaces.app'
end
