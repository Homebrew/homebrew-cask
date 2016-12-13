cask 'winds' do
  version :latest
  sha256 :no_check

  url 'https://github.com/GetStream/Winds/releases/download/v0.3.0/Winds.zip'
  name 'Winds'
  homepage 'https://winds.getstream.io'

  app 'Winds.app'
end
