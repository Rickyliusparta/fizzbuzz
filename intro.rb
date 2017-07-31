


require 'rspec'

RSpec.describe "basic calc engine works"do

    it "should add two integers correctly" do
        calc = Calcengine.new
        expect(calc).to respond_to(:add)
        expect(calc.add(4,5)).to eql(9)        
    end
    it "should add two floats correctly" do
        calc = Calcengine.new
        expect(calc.add(4.5,5.5)).to eql(10.0)        
    end
    it "should add two negative numbers correctly" do
        calc = Calcengine.new
        expect(calc.add(-4,-5)).to eql(-9)        
    end
    it "should add a number with floats correctly" do
        calc = Calcengine.new
        expect(calc.add(4,5.5)).to eql(9.5)        
    end







    it "should minus two numbers correctly" do
        calc = Calcengine.new
        expect(calc).to respond_to(:minus)
        expect(calc.minus(6,5)).to eql(1)
    end
    it "should times two numbers correctly" do
        calc = Calcengine.new
        expect(calc).to respond_to(:times)
        expect(calc.times(4,5)).to eql(20)
    end
    it "should divide two numbers correctly" do
        calc = Calcengine.new
        expect(calc).to respond_to(:divide)
        expect(calc.divide(15,5)).to eql(3)

    end
end


class Calcengine
    def add n1, n2
        result = n1 + n2
        result
    end
    def minus n1, n2
        result = n1 - n2
        result
    end
    def times n1, n2
        result = n1 * n2
        result
    end
    def divide n1, n2
        result = n1 / n2
        result
    end
end

