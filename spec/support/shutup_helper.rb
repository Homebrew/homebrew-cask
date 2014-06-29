module ShutupHelper
  def shutup
    if ARGV.verbose?
      yield
    else
      begin
        tmperr = $stderr.clone
        tmpout = $stdout.clone
        $stderr.reopen '/dev/null', 'w'
        $stdout.reopen '/dev/null', 'w'
        yield
      ensure
        $stderr.reopen tmperr
        $stdout.reopen tmpout
      end
    end
  end
end
