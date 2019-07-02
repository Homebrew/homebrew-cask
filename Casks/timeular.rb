cask 'timeular' do
    version :latest
    sha256 :no_check
  
    url 'https://timeular-desktop-packages.s3.amazonaws.com/mac/production/Timeular.dmg'
    name 'Timeular'
    homepage 'https://timeular.com/'
  
    app 'Timeular.app'
  end
  