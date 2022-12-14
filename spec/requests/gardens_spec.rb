require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/gardens", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Garden. As you add validations to Garden, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Garden.create! valid_attributes
      get gardens_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      garden = Garden.create! valid_attributes
      get garden_url(garden)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_garden_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      garden = Garden.create! valid_attributes
      get edit_garden_url(garden)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Garden" do
        expect {
          post gardens_url, params: { garden: valid_attributes }
        }.to change(Garden, :count).by(1)
      end

      it "redirects to the created garden" do
        post gardens_url, params: { garden: valid_attributes }
        expect(response).to redirect_to(garden_url(Garden.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Garden" do
        expect {
          post gardens_url, params: { garden: invalid_attributes }
        }.to change(Garden, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post gardens_url, params: { garden: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested garden" do
        garden = Garden.create! valid_attributes
        patch garden_url(garden), params: { garden: new_attributes }
        garden.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the garden" do
        garden = Garden.create! valid_attributes
        patch garden_url(garden), params: { garden: new_attributes }
        garden.reload
        expect(response).to redirect_to(garden_url(garden))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        garden = Garden.create! valid_attributes
        patch garden_url(garden), params: { garden: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested garden" do
      garden = Garden.create! valid_attributes
      expect {
        delete garden_url(garden)
      }.to change(Garden, :count).by(-1)
    end

    it "redirects to the gardens list" do
      garden = Garden.create! valid_attributes
      delete garden_url(garden)
      expect(response).to redirect_to(gardens_url)
    end
  end
end
