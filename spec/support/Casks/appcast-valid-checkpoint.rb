test_cask 'appcast-valid-checkpoint' do
  appcast 'http://localhost/appcast.xml',
          checkpoint: 'd5b2dfbef7ea28c25f7a77cd7fa14d013d82b626db1d82e00e25822464ba19e2'
end
