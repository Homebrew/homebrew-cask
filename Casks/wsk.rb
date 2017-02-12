cask 'wsk' do
  version :latest
  sha256 :no_check

  url 'https://openwhisk.ng.bluemix.net/cli/go/download/mac/amd64/OpenWhisk_CLI-mac.zip'
  name 'OpenWhisk CLI'
  homepage 'https://console.ng.bluemix.net/openwhisk/cli'

  binary 'wsk'

  uninstall delete: '/usr/local/bin/wsk'
end
