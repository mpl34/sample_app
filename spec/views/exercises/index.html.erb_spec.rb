require 'spec_helper'

describe "exercises/index" do
  before(:each) do
    assign(:exercises, [
      stub_model(Exercise,
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
      ),
      stub_model(Exercise,
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
      )
    ])
  end

  it "renders a list of exercises" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Side".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Text".to_s, :count => 2
    assert_select "tr>td", :text => "Area".to_s, :count => 2
    assert_select "tr>td", :text => "Equipment".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "String".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Eb Link".to_s, :count => 2
    assert_select "tr>td", :text => "Eb Article".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Video Link".to_s, :count => 2
    assert_select "tr>td", :text => "Image1".to_s, :count => 2
    assert_select "tr>td", :text => "String".to_s, :count => 2
    assert_select "tr>td", :text => "Image2".to_s, :count => 2
    assert_select "tr>td", :text => "Image3".to_s, :count => 2
    assert_select "tr>td", :text => "Image4".to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
