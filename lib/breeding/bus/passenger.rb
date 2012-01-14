module Breeding
  module Bus
    class Passenger
      def initialize
        @@comfort_radius, @@body_radius = 5, 3
      end
      attr_accessor :x, :y
    end
  end
end
