cask 'warsow' do
  version '2.01'
  sha256 '1a144b59dd7b642d86eb4530e6dc6388c6acb30a1cce28b31b16dfea269e0790'

  url "https://www.warsow.gg/download?dl=warsow#{version.delete('.')}mac"
  name 'Warsow'
  homepage 'http://www.warsow.net/'
  license :gpl

  app 'Warsow.app'
end
