module Faker
  class Vehicle < Base

    class << self
      def init
        source = File.expand_path(File.dirname(__FILE__) + '/../locales/vehicle_data.json')
        @info = JSON.parse(File.read(source)).sample
      end

      def make
        init unless @info
        @info['make']
      end

      def model
        init unless @info
        @info['model']
      end

      def year
        init unless @info
        @info['year']
        # random = Random.new
        # random.rand(2008..2014)
      end

      def trim
        init unless @info
        @info['trim']
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
