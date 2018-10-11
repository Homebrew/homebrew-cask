module Travis
  module_function

  @start = {}

  def fold(id, &block)
    print fold_start(id)
    time(rand(2**32).to_s(16), &block)
    print fold_end(id)
  end

  def fold_start(id)
    "travis_fold:start:#{id}\r\033[0K"
  end

  def fold_end(id)
    "travis_fold:end:#{id}\r\033[0K"
  end

  def time(id)
    print time_start(id)
    yield
    print time_end(id)
  end

  def time_start(id)
    @start[id] = Time.now
    "travis_time:start:#{id}\r\033[0K"
  end

  def time_end(id)
    start = (@start[id].to_f * 1_000_000_000).to_i
    finish = (Time.now.to_f * 1_000_000_000).to_i
    duration = finish - start

    "travis_time:end:#{id},start=#{start},finish=#{finish},duration=#{duration}\r\033[0K"
  end
end
