cask 'unicorns' do
  version :latest
  sha256 :no_check

  url 'http://cdn.unicorns.io/app/Unicorns.zip'
  name 'Unicorns'
  homepage 'https://unicorns.io'
  license :gratis

  app 'Unicorns.app'
end
