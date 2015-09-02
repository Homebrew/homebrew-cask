cask :v1 => 'the-unarchiver' do
  version '3.9.1'
  sha256 '4911c332df7f4bb23877652700e845fe097b793ae37450948319398009e923a3'

  url "http://unarchiver.c3.cx/downloads/TheUnarchiver#{version}_legacy.zip"
  name 'The Unarchiver'
  homepage 'http://unarchiver.c3.cx/unarchiver'
  license :oss

  app 'The Unarchiver.app'
end
