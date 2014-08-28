module Faker
  class Vehicle < Base

    class << self
      def make
        fetch('vehicle.make')
      end

      def model
        fetch('vehicle.model')
      end

      def year
        random = Random.new
        random.rand(2008..2014)
      end

      def price
        random = Random.new
        (random.rand(100..500) * 100).floor
      end

      def vin
        vin = ""
        # 2 letters + 1 number + 2 leters + 4 numbers + 2 letters + 6 numbers
        vin = vin + (0...2).map { (65 + rand(26)).chr }.join
        vin = vin + (48 + rand(10)).chr
        vin = vin + (0...2).map { (65 + rand(26)).chr }.join
        vin = vin + (0...4).map { (48 + rand(10)).chr }.join
        vin = vin + (0...2).map { (65 + rand(26)).chr }.join
        vin = vin + (0...6).map { (48 + rand(10)).chr }.join
        vin
      end
    end
  end
end
