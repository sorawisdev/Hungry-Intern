require 'rails_helper'

RSpec.describe "Assign" do
  describe "eq" do
    it "is 42 + 42 = 84 ?" do
      expect(42+42).to eq(84)
    end

    it "is 42.0 + 42 != 84 ?" do
      expect(42.0 + 42).to eq(84)
    end
  end


  describe "eql" do
    it "is 42.0 + 42 = 84 ?" do
      expect(42.0 + 42).not_to eql(84)
    end

    it "is 42.0 eql 42.0 = 84.0 ?" do
      expect(42.0 + 42.0).to eql(84.0)
    end
  end


  describe "equal/be" do
    it "equal test to equal" do
      a = "equal test"
      b = a
      expect(a).to equal(b)
    end

    it "equal test not to equal" do
      a = "equal test"
      b = "equal test"
      expect(a).not_to equal(b)
    end
  end


  describe "Comparisons matchers (>, >=, <, <=)" do
    it "is 42 > 50" do
      expect(42).not_to be > 50
    end

    it "is 42 < 50" do
      expect(42).to be < 50
    end
  end


  describe "Predicate matchers" do
    # a = 7 , b = ""
    # it "empty?" do
    #   expect(a.empty?).not_to be_empty?
    # end
  end


  describe "include" do
    animal = ["Cat", "Dog", "Fish", "kakaka"]

    it "is animal includes Chicken" do
      expect(animal).not_to include("Chicken")
    end

    it "is animal includes Cat" do
      expect(animal).to include("Cat")
    end
  end


end
