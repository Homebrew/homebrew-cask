cask 'volta' do
  version :latest
  sha256 :no_check

  url 'http://volta.garymathews.com/Volta.dmg'
  name 'Volta'
  homepage 'http://volta.garymathews.com/'

  depends_on macos: '>= :yosemite'

  app 'Volta.app'

  uninstall login_item: 'Volta',
            quit:       [
                          'com.gmathews.volta',
                          'com.gmathews.volta.helper',
                        ]
end
