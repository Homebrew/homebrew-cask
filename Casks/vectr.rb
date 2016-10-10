cask 'vectr' do
  version '0.1.10'
  sha256 '2fd1589a9d3eb4745b49588f54dd0758074bbbdf7aaa6379934ab9c9d8fbf0f4'

  url "http://download.vectr.com/desktop/#{version}/mac/Vectr-#{version}.dmg"
  name 'Vectr'
  homepage 'https://vectr.com'

  app 'Vectr.app'
end
