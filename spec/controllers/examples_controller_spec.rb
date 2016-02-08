require 'rails_helper'

describe ExamplesController do

  let(:user) { create(:user) }
  before { sign_in :user, user }

  # This should return the minimal set of attributes required to create a valid
  # Example. As you add validations to Example, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    { name: "bob", favorite_color: "green" }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ExamplesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all examples as @examples" do
      example = Example.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:examples)).to eq([example])
    end
  end

  describe "GET #show" do
    it "assigns the requested example as @example" do
      example = Example.create! valid_attributes
      get :show, {:id => example.to_param}, valid_session
      expect(assigns(:example)).to eq(example)
    end
  end

  describe "GET #new" do
    it "assigns a new example as @example" do
      get :new, {}, valid_session
      expect(assigns(:example)).to be_a_new(Example)
    end
  end

  describe "GET #edit" do
    it "assigns the requested example as @example" do
      example = Example.create! valid_attributes
      get :edit, {:id => example.to_param}, valid_session
      expect(assigns(:example)).to eq(example)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Example" do
        expect {
          post :create, {:example => valid_attributes}, valid_session
        }.to change(Example, :count).by(1)
      end

      it "assigns a newly created example as @example" do
        post :create, {:example => valid_attributes}, valid_session
        expect(assigns(:example)).to be_a(Example)
        expect(assigns(:example)).to be_persisted
      end

      it "redirects to the created example" do
        post :create, {:example => valid_attributes}, valid_session
        expect(response).to redirect_to(Example.last)
      end
    end

  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        { name: "roberta", favorite_color: "tartan" }
      }

      it "assigns the requested example as @example" do
        example = Example.create! valid_attributes
        put :update, {:id => example.to_param, :example => valid_attributes}, valid_session
        expect(assigns(:example)).to eq(example)
      end

      it "redirects to the example" do
        example = Example.create! valid_attributes
        put :update, {:id => example.to_param, :example => valid_attributes}, valid_session
        expect(response).to redirect_to(example)
      end
    end

  end

  describe "DELETE #destroy" do
    it "destroys the requested example" do
      example = Example.create! valid_attributes
      expect {
        delete :destroy, {:id => example.to_param}, valid_session
      }.to change(Example, :count).by(-1)
    end

    it "redirects to the examples list" do
      example = Example.create! valid_attributes
      delete :destroy, {:id => example.to_param}, valid_session
      expect(response).to redirect_to(examples_url)
    end
  end

end
