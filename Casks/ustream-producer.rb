cask 'ustream-producer' do
  version '6.0.6'
  sha256 'e3b38861fae0288fc717213b209766035c0507c90b4dc028cef9928af246df7b'

  url "https://www.ustream.tv/producer/download/mac/free/#{version}"
  name 'Ustream Producer'
  homepage 'https://www.ustream.tv/'

  app 'Ustream Producer.app'
end
