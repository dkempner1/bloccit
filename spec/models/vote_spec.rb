require 'rails_helper'
include RandomData

RSpec.describe Vote, type: :model do
  let(:topic) { Topic.create!(name: RandomData.random_sentence, description: RandomData.random_paragraph) }
   let(:user) { User.create!(name: "Bloccit User", email: "user@bloccit.com", password: "helloworld") }
   let(:post) { topic.posts.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph, user: user) }
   let(:vote) { Vote.create!(value: 1, post: post, user: user) }

 # #1
   it { should belong_to(:post) }
   it { should belong_to(:user) }
 # #2
   it { should validate_presence_of(:value) }
 # #3
   it { should validate_inclusion_of(:value).in_array([-1, 1]) }
end
