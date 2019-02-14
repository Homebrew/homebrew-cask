cask 'tmetricdesktop' do
  version '18.2.4'
  sha256 '995c4fae15b8f2c07034bec093b84710296cff0a780df874d2f6bbd06d34fa66'

  url "https://static.tmetric.com/desktop/tmetric_desktop_#{version}.pkg"
  name 'TMetric'
  homepage 'https://tmetric.com/'

  pkg "tmetric_desktop_#{version}.pkg"

  uninstall signal:  ['TERM', 'com.company.TMetricDesktop'],
            pkgutil: 'com.company.TMetricDesktop',
            delete:  '/Applications/TMetricDesktop'
end
