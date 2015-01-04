class Timer
    attr_accessor   :seconds
    def initialize
        @seconds = 0
    end

    def padded(time)
        time < 10 ? "0#{time}" : "#{time}"
    end
    def time_string
        hour = @seconds / 3600
        min = (@seconds % 3600) / 60
        sec = (@seconds % 3600) % 60
        hour = padded(hour)
        min = padded(min)
        sec = padded(sec)
        hour << ":" << min << ":" << sec
    end
end
