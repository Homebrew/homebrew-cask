cask 'utopia' do
  version '3.0.2'
  sha256 'aec6ce346940c6e58825b7d90c0f1364743a40ff34c78a9186f1ab4f25625191'

  url "http://utopiadocs.com/files/Utopia-#{version}-Mac.dmg"
  name 'Utopia Documents'
  homepage 'http://utopiadocs.com/'

  depends_on macos: '>= :yosemite'

  app 'Utopia.app'
end
