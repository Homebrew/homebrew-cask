cask :v1 => 'telephone' do
  version '1.0.4'
  sha256 'e2c06dffd13610fe69d90c5dd61cc80050076517f6a16e8a78ad48e2a12caf2e'

  url "http://www.tlphn.com/resources/Telephone-#{version}.dmg"
  name 'Telephone'
  homepage 'http://www.tlphn.com/'
  license :oss

  app 'Telephone.app'
end
