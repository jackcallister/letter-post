require 'spec_helper'

describe LettersController do

  describe "GET 'new'" do
    before { get :new }

    it "returns http success" do
      response.should be_success
    end

    it "renders the new.html.erb template" do
      expect(response).to render_template('new')
    end

    it "assigns @letter" do
      letter = Letter.new
      expect(assigns(:letter)) == letter
    end
  end

  describe "GET 'create'" do
    it "returns http success" do
      get 'create'
      response.should be_success
    end
  end

  describe "GET 'update'" do
    it "returns http success" do
      get 'update'
      response.should be_success
    end
  end

  describe "GET 'show'" do
    it "returns http success" do
      get 'show'
      response.should be_success
    end
  end

end
