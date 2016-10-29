cask 'tagspaces' do
  version '2.5.0'
  sha256 'cf668916519e0848b54c146796e57278a369edeacf26902ed08a166b5fc35559'

  # github.com/tagspaces/tagspaces was verified as official when first introduced to the cask
  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-#{version}-osx64.zip"
  appcast 'https://github.com/tagspaces/tagspaces/releases.atom',
          checkpoint: 'd580c5cbfb066f3d80c174237cd3c8ebadd8b7007013b7a05df701a1e13bf7b7'
  name 'TagSpaces'
  homepage 'https://www.tagspaces.org/'

  app 'TagSpaces.app'
end
