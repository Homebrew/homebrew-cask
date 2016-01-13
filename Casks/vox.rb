cask 'vox' do
  version '2700.1,1452622352'
  sha256 '0fa143060e43411ed28a8cc9fbc4e17b6553a4a73a28a8b7d362e625108ea97a'

  # devmate.com is the official download host per the vendor homepage
  url "https://dl.devmate.com/com.coppertino.Vox/#{version.before_comma}/#{version.after_comma}/Vox-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.coppertino.Vox.xml',
          :sha256 => 'c30b4020cd5b1c4841740b8ee4feafe5b1d3038757caedd1d5f75bf26b17cd61'
  name 'VOX'
  homepage 'https://coppertino.com/vox/mac'
  license :freemium

  app 'VOX.app'
end
