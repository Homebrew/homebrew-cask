cask :v1 => 'utopia' do
  version '2.4.2'
  sha256 'c9c0f76a0a9035fe9a8405c6e32368ddf594aac86d742cd6aefdfa64d699e20a'

  url "http://utopiadocs.com/files/Utopia-#{version}-Mac.dmg"
  homepage 'http://utopiadocs.com/'
  license :unknown

  app 'Utopia.app'
end
