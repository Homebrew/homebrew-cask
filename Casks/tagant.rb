cask 'tagant' do
  version '1.2.0'
  sha256 '712eb54638b2162de7115314bf35f6f800e786c5b7a08bec944e92badc52cee2'

  url "http://www.laurenceanthony.net/software/tagant/releases/TagAnt#{version.no_dots}/TagAnt.zip"
  appcast 'http://www.laurenceanthony.net/software/tagant/releases/',
          checkpoint: '5876e7898f93f7e6a24d3245adf8d93d2af6dd684bab8e0e03450314552fab31'
  name 'TagAnt'
  homepage 'http://www.laurenceanthony.net/software/tagant/'

  app 'TagAnt.app'
end
