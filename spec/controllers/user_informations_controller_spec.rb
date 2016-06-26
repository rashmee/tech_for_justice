require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe UserInformationsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # UserInformation. As you add validations to UserInformation, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # UserInformationsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all user_informations as @user_informations" do
      user_information = UserInformation.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:user_informations)).to eq([user_information])
    end
  end

  describe "GET #show" do
    it "assigns the requested user_information as @user_information" do
      user_information = UserInformation.create! valid_attributes
      get :show, {:id => user_information.to_param}, valid_session
      expect(assigns(:user_information)).to eq(user_information)
    end
  end

  describe "GET #new" do
    it "assigns a new user_information as @user_information" do
      get :new, {}, valid_session
      expect(assigns(:user_information)).to be_a_new(UserInformation)
    end
  end

  describe "GET #edit" do
    it "assigns the requested user_information as @user_information" do
      user_information = UserInformation.create! valid_attributes
      get :edit, {:id => user_information.to_param}, valid_session
      expect(assigns(:user_information)).to eq(user_information)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new UserInformation" do
        expect {
          post :create, {:user_information => valid_attributes}, valid_session
        }.to change(UserInformation, :count).by(1)
      end

      it "assigns a newly created user_information as @user_information" do
        post :create, {:user_information => valid_attributes}, valid_session
        expect(assigns(:user_information)).to be_a(UserInformation)
        expect(assigns(:user_information)).to be_persisted
      end

      it "redirects to the created user_information" do
        post :create, {:user_information => valid_attributes}, valid_session
        expect(response).to redirect_to(UserInformation.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved user_information as @user_information" do
        post :create, {:user_information => invalid_attributes}, valid_session
        expect(assigns(:user_information)).to be_a_new(UserInformation)
      end

      it "re-renders the 'new' template" do
        post :create, {:user_information => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested user_information" do
        user_information = UserInformation.create! valid_attributes
        put :update, {:id => user_information.to_param, :user_information => new_attributes}, valid_session
        user_information.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested user_information as @user_information" do
        user_information = UserInformation.create! valid_attributes
        put :update, {:id => user_information.to_param, :user_information => valid_attributes}, valid_session
        expect(assigns(:user_information)).to eq(user_information)
      end

      it "redirects to the user_information" do
        user_information = UserInformation.create! valid_attributes
        put :update, {:id => user_information.to_param, :user_information => valid_attributes}, valid_session
        expect(response).to redirect_to(user_information)
      end
    end

    context "with invalid params" do
      it "assigns the user_information as @user_information" do
        user_information = UserInformation.create! valid_attributes
        put :update, {:id => user_information.to_param, :user_information => invalid_attributes}, valid_session
        expect(assigns(:user_information)).to eq(user_information)
      end

      it "re-renders the 'edit' template" do
        user_information = UserInformation.create! valid_attributes
        put :update, {:id => user_information.to_param, :user_information => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested user_information" do
      user_information = UserInformation.create! valid_attributes
      expect {
        delete :destroy, {:id => user_information.to_param}, valid_session
      }.to change(UserInformation, :count).by(-1)
    end

    it "redirects to the user_informations list" do
      user_information = UserInformation.create! valid_attributes
      delete :destroy, {:id => user_information.to_param}, valid_session
      expect(response).to redirect_to(user_informations_url)
    end
  end

end