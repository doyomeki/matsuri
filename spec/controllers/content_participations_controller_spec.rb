require 'spec_helper'

describe ContentParticipationsController do

  describe "GET 'edit'" do
    it "returns http success" do
      get 'edit'
      response.should be_success
    end
  end

end
