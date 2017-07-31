require 'rspec'



RSpec.describe "fizzbuzz works" do
    it " array should contain 100 elements"do
    array = Fizzbuzz.new
    expect(array).to respond_to(:length)
    expect(array.length.length).to eql(100)
    end

    it "array should contain integers" do
        array = Fizzbuzz.new
        expect(array.check(5)).to be_a(Integer)
    end
    it "array should contain integers" do
        array = Fizzbuzz.new
        expect(array.check(5)).to eql(5)
    end
    it "if integer divisible by only three return Fizz" do
        array =Fizzbuzz.new
        expect(array.check_fizzbuzz(3)).to eql('Fizz')
    end

    it "if integer divisible by only five return Buzz" do
        array =Fizzbuzz.new
        expect(array.check_fizzbuzz(5)).to eql('Buzz')
    end

    it "if integer divisible by only fifteen return FizzBuzz" do
        array =Fizzbuzz.new
        expect(array.check_fizzbuzz(15)).to eql('FizzBuzz')
    end

    it "if integer not divisible by 3 or 5 return number" do
        array =Fizzbuzz.new
        expect(array.check_fizzbuzz(2)).to be_a(Integer)
    end

end

class Fizzbuzz

    def length
        array = Array.new(100)
        array
    end

    def check n1
        array = Array.new(100)
        for i in 1..100 
            array[i-1]= i
        end
        array[n1-1]

    end

    def check_fizzbuzz n1
        array = Array.new(100)
        for i in 1..100 
            array[i-1]= i
        end
        fb = array[n1-1]

        if fb % 15 == 0
            fb = 'FizzBuzz'
        elsif fb % 3 == 0
            fb = 'Fizz'
        elsif fb % 5 == 0
            fb = 'Buzz'
        else 
            fb
        end
    end

end




