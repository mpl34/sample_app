require 'spec_helper'

describe "exercises/show" do
  before(:each) do
    @exercise = assign(:exercise, stub_model(Exercise,
      :name => "Name",
      :sets => 1,
      :reps => 2,
      :time => 3,
      :rest => 4,
      :side => "Side",
      :description => "Description",
      :text => "Text",
      :area => "Area",
      :equipment => "Equipment",
      :type => "Type",
      :string => "String",
      :best_for => "MyText",
      :eb_link => "Eb Link",
      :eb_article => "Eb Article",
      :abstract => "MyText",
      :video_link => "Video Link",
      :image1 => "Image1",
      :string => "String",
      :image2 => "Image2",
      :image3 => "Image3",
      :image4 => "Image4",
      :created_by => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/Side/)
    rendered.should match(/Description/)
    rendered.should match(/Text/)
    rendered.should match(/Area/)
    rendered.should match(/Equipment/)
    rendered.should match(/Type/)
    rendered.should match(/String/)
    rendered.should match(/MyText/)
    rendered.should match(/Eb Link/)
    rendered.should match(/Eb Article/)
    rendered.should match(/MyText/)
    rendered.should match(/Video Link/)
    rendered.should match(/Image1/)
    rendered.should match(/String/)
    rendered.should match(/Image2/)
    rendered.should match(/Image3/)
    rendered.should match(/Image4/)
    rendered.should match(/5/)
  end
end
