cask 'twist' do
  version '1.0.10,2844'
  sha256 '8e7606f2e975cfd60760334ac0d3babe3c05a5727dde89e7e682657c5372bdf5'

  url "https://downloads.twistapp.com/mac/Twist-#{version.after_comma}.zip"
  appcast 'https://downloads.twistapp.com/mac/AppCast.xml',
          checkpoint: '0e358713c31b2080fb75120ec2e6f1798e22eadf20bd8c19ff4c2d8ed5b0423d'
  name 'Twist'
  homepage 'https://twistapp.com/'

  app 'Twist.app'
end
