cask 'transfer' do
  version '1.2.2.9'
  sha256 'e8940345dc4212f6d77cac5b61c1dd0147ad3e9d1d7aeb21e6c344ee0b8de3e5'

  url "https://www.elektron.se/wp-content/uploads/2018/03/Elektron_Transfer_#{version}_macOS.zip"
  appcast 'https://www.elektron.se/support/?connection=transfer'
  name 'Elektron Transfer'
  homepage 'https://www.elektron.se/support/?connection=transfer#resources'

  app 'Transfer.app'
end
