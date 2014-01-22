class TvShowTracker < Cask
  url 'http://www.pixelperfectwidgets.com/tvshowtracker/download/tvshowtracker_1.3.3.zip'
  homepage 'http://www.pixelperfectwidgets.com/'
  version '1.3.3'
  sha1 '81e613d6525c49196625271dd76090866c1b2ddd'
  widget 'TV Show Tracker.wdgt'
  caveats do
    puts <<-EOS.undent
    Currently, Dashboard Widgets such as '#{@cask}' do NOT work correctly
    when installed via brew-cask.  The bug is being tracked here:

        https://github.com/phinze/homebrew-cask/issues/2206

    It is recommended that you do not install this Cask unless you are
    a developer working on the problem.

    EOS
    end
end
