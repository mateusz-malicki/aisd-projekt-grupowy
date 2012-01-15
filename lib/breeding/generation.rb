module Breeding
  class Generation
    
    def initialize(buses = nil)
      @@coefficient = 0.05;
      @@size = 10000;

      if buses.nil?
        @buses = Array.new(size)
        @buses.each do |bus|
          bus = Bus.new
        end
      else
        @buses = buses
      end
    end

    def mutate
      @buses.each do |bus|
        if rand(10000)/10000 <= @@coefficient
          bus.mutate
        end
      end
    end

  end
end
