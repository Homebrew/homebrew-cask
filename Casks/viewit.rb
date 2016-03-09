cask 'viewit' do
  version '2.55'
  sha256 '0adeb4a7bb436c4082d86b78e316e9dfb312b4499a43421d8548873c107afb3d'

  url "http://www.hexcat.com/downloads/ViewIt-#{version}.zip"
  name 'ViewIt'
  homepage 'http://www.hexcat.com/viewit/'
  license :commercial

  app 'ViewIt.app'
end
