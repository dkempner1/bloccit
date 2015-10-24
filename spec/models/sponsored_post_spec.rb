require 'rails_helper'
include RandomData

RSpec.describe SponsoredPost, type: :model do
<<<<<<< HEAD
  let(:topic) { Topic.create!(name: RandomData.random_sentence, description: RandomData.random_paragraph) }
  let(:sponsored_post) { topic.sponsored_posts.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph, price: RandomData.random_number) }

  it { should belong_to(:topic) }
  context "attributes" do
=======

let(:topic) { Topic.create!(name: RandomData.random_sentence, description: RandomData.random_paragraph)}
let(:my_sponsored_post) { topic.sponsored_posts.create!(title: RandomData.random_sentence, body: RandomData.random_sentence, price: RandomData.random_number)}

it { should belong_to(:topic)}

  describe "attributes" do
>>>>>>> cc6c1e3e3ce8e2babed0bdffc78193c65d3ba8b3
    it "should respond to title" do
      expect(sponsored_post).to respond_to(:title)
    end

<<<<<<< HEAD
    it "should respond to description" do
=======
    it "should respond to body" do
>>>>>>> cc6c1e3e3ce8e2babed0bdffc78193c65d3ba8b3
      expect(sponsored_post).to respond_to(:body)
    end

    it "should respond to price" do
      expect(sponsored_post).to respond_to(:price)
    end
  end
<<<<<<< HEAD

=======
>>>>>>> cc6c1e3e3ce8e2babed0bdffc78193c65d3ba8b3
end
