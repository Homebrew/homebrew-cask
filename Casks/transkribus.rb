cask 'transkribus' do
  version :latest
  sha256 :no_check

  url 'https://transkribus.eu/TrpServer/rest/downloadLatestGui?packageType=mac'
  name 'Transkribus'
  homepage 'https://transkribus.eu/'

  app 'Transkribus.app'

  caveats do
    depends_on_java
  end
end
