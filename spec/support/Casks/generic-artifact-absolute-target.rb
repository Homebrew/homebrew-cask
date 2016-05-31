test_cask 'generic-artifact-absolute-target' do
  artifact 'Caffeine.app', target: "#{Hbc.appdir}/Caffeine.app"
end
