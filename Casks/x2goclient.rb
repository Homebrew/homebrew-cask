cask 'x2goclient' do
  version '4.1.0.0'

  if MacOS.version <= :mountain_lion
    sha256 '8fbb806167461af5cfc15b5662a6a6ab5a4459c7f3c8efc61087ade80f919a4c'
    url "https://code.x2go.org/releases/binary-macosx/x2goclient/releases/#{version}/x2goclient-#{version}-20170222_OSX_10_6.dmg"
  else
    sha256 'e0ba49333b0748dbe66a732435ecfe8f98b5c72f334b239d974f8bc58943606d'
    url "https://code.x2go.org/releases/binary-macosx/x2goclient/releases/#{version}/x2goclient-#{version}-20170222_OSX_10_9.dmg"
  end

  name 'X2Go Client'
  homepage 'http://wiki.x2go.org/doku.php'

  app 'x2goclient.app'
end
