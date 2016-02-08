require 'rails_helper'

describe ExamplesController do
  include ExampleHelper

  let(:user) { create(:user) }
  before { sign_in :user, user }
  
  let(:valid_attributes) {
    { name: "bob", favorite_color: "green" }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ExamplesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    let!(:examples) { spawn_examples }
    context "without filtering" do
      before { get :index, {}, valid_session }
      it { expect(assigns(:examples).size).to be == 20 }
      it { expect(response.code.to_i).to be == 200  }
    end

    context "page 2" do
      before { get :index, { page: 2 }, valid_session }
      it { expect(assigns(:examples).size).to be == 5 }
      it { expect(response.code.to_i).to be == 200  }
    end
  end

  describe "GET #show" do
    let!(:examples) { spawn_examples }
    let(:example) { examples.last }
    context "retrieves an example" do
      before { get :show, {:id => example.id}, valid_session }
      it { expect(response.code.to_i).to be == 200  }
      it { expect(assigns(:example)).to be == example }
    end
  end

  describe "GET #new" do
    context "creates a new example" do
      before { get :new, {}, valid_session }
      it { expect(response.code.to_i).to be == 200  }
      it { expect(assigns(:example)).to be_a_new(Example) }
    end
  end

  describe "GET #edit" do
    let!(:examples) { spawn_examples }
    let(:example) { examples.last }
    context "starts editing an example" do
      before { get :edit, {id: example.to_param}, valid_session }
      it { expect(response.code.to_i).to be == 200  }
      it { expect(assigns(:example)).to be == example }
    end
  end

  describe "POST #create" do
    context "with valid params" do
      let(:example_attr) { { example: attributes_for(:example) } }
      context "creates a new Example" do
        it { expect { post :create, example_attr, valid_session
                    }.to change(Example, :count).by(1) }
      end

      context "redirects to the show page after creation" do
        before { post :create, example_attr, valid_session }
        it { expect(response.code.to_i).to be == 302  }
        it { expect(assigns(:example)).to be == Example.last }
        it { expect(assigns(:example)).to be_persisted }
        it { expect(response).to redirect_to(Example.last) }
      end
    end

  end

  describe "PUT #update" do
    context "with valid params" do
      let(:attr) { { name: "roberta", 
                     favorite_color: "tartan" } }
      let!(:examples) { spawn_examples }
      let(:example) { examples.last }

      context "updates the record" do
        before { put :update, { id: example.to_param, example: attr}, valid_session }
        it { expect(response.code.to_i).to be == 302  }
        it { expect(assigns(:example)).to be == example }
        it { expect(response).to redirect_to(example) }
      end
    end

  end

  describe "DELETE #destroy" do
    let!(:examples) { spawn_examples }
    let(:example) { examples.last }
    let(:attr) { { id: example.to_param } }
    
    context "destroys the requested example" do
      it { expect { delete :destroy, attr, valid_session
                  }.to change(Example, :count).by(-1) }
    end

    context "redirects to the examples list" do
      before { delete :destroy, attr, valid_session }
      it { expect(response).to redirect_to(examples_url) }
    end
  end

end
