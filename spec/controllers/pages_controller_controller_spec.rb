require 'spec_helper'

RSpec.describe PagesControllerController, :type => :controller do

  describe "GET 'helloWorld'" do
    it "returns http success" do
      get 'helloWorld'
      expect(response).to be_success
    end
  end

end
