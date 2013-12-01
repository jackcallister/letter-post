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
end