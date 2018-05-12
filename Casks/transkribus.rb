cask 'transkribus' do
  version :latest
  sha256 :no_check

  url 'https://transkribus.eu/TrpServer/rest/downloadLatestGui?packageType=mac'
  name 'Transkribus'
  homepage 'https://transkribus.eu/'

  depends_on cask: 'java'

  app 'Transkribus.app'
end
