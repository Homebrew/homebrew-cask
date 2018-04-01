cask 'twist' do
  version '1.0.22,3279'
  sha256 'aca89630774fa53f7cda305e525174e21307ed5455aba48e2cb9df6c32615e7a'

  url "https://downloads.twistapp.com/mac/Twist-#{version.after_comma}.zip"
  appcast 'https://downloads.twistapp.com/mac/AppCast.xml',
          checkpoint: '5aa976bc5fcce3706328408fbc81d788316845b3eb4a783c82adfd7d7ae8d227'
  name 'Twist'
  homepage 'https://twistapp.com/'

  app 'Twist.app'
end
