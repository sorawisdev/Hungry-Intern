require 'rails_helper'

RSpec.describe "Sample 1" do                              #Like a Big Box

  let(:create_category) {
    Category.create(name: "Food")
  }

  before do
    puts "----- before -----"

  end

  after do
    puts "----- after -----"  
  end
  
  describe "box-1" do 
    # before do
    #   puts "----- before Box-1 -----"
    # end
    it "1 + 1 = 2 ?" do                                     #A Obj in a Big Box  --> 1 testcase(it) & 2 expect(expect)     
      puts "----- 1 + 1 = 2 ? -----"
      expect(1+1).to eq(2)  
      expect(create_category.name).to eq("Food")
  
    end
  end

  describe "box-2" do
    it "try to do something" do
      
      puts "----- do somthing -----"
      # item = Category.create(name: "Food")
      expect(create_category.name).not_to be_empty
  
  
      expect(["Dog","Cat","Fish"]).not_to include(create_category.name)
      expect(["Food","Dessert","Ice-cream"]).to include(create_category.name)
    end
  end
  
end
