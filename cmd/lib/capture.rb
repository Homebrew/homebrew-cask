require "pty"

def capture
  old_stdout = $stdout.dup
  old_stderr = $stderr.dup

  PTY.open do |r, w|
    $stdout.reopen(w)
    $stderr.reopen(w)

    thread = Thread.new do
      begin
        yield
      ensure
        $stdout.flush
        $stderr.flush
      end
    end
    thread.abort_on_exception = true

    output = ""

    loop do
      begin
        output << r.readline_nonblock || ""
      rescue IO::WaitReadable
        break unless thread.alive?
      end
    end

    result = thread.value

    [result, output]
  end
ensure
  $stdout.reopen(old_stdout)
  $stderr.reopen(old_stderr)
end
