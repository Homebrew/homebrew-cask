cask :v1 => 'the-unarchiver' do
  version '3.9.1'
  sha256 '4911c332df7f4bb23877652700e845fe097b793ae37450948319398009e923a3'

  # googlecode.com is the official download host per the vendor homepage
  url "https://theunarchiver.googlecode.com/files/TheUnarchiver#{version}_legacy.zip"
  name 'The Unarchiver'
  homepage 'http://unarchiver.c3.cx/unarchiver'
  license :oss

  app 'The Unarchiver.app'
end
