cask 'utopia' do
  version '3.0.0'
  sha256 '2fc2f0ffae6ef37f803b30bee0dcd62237949fc27e29de51920c2b32fd82ab7c'

  url "http://utopiadocs.com/files/Utopia-#{version}-Mac.dmg"
  name 'Utopia Documents'
  homepage 'http://utopiadocs.com/'

  depends_on macos: '>= :yosemite'

  app 'Utopia.app'
end
