cask 'ustream-producer' do
  version '7.3'
  sha256 'cc9f9f76dc7b600f671ab38d6ba07b8ca6175d005928a4407ab5787af81f5d0e'

  url "https://www.ustream.tv/producer/download/mac/free/#{version}"
  name 'Ustream Producer'
  homepage 'https://www.ustream.tv/'

  app 'Ustream Producer.app'
end
