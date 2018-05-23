cask 'utopia' do
  version '3.1.0'
  sha256 '8b36526c0993d284186776d875597efbda2a584670d4ab3f4d7f8ddcd7547231'

  url "http://utopiadocs.com/files/Utopia-#{version}-Mac.dmg"
  name 'Utopia Documents'
  homepage 'http://utopiadocs.com/'

  depends_on macos: '>= :yosemite'

  app 'Utopia.app'
end
