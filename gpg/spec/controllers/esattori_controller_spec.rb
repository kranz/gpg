require 'spec_helper'

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

describe EsattoriController do

  # This should return the minimal set of attributes required to create a valid
  # Esattore. As you add validations to Esattore, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all esattori as @esattori" do
      esattore = Esattore.create! valid_attributes
      get :index
      assigns(:esattori).should eq([esattore])
    end
  end

  describe "GET show" do
    it "assigns the requested esattore as @esattore" do
      esattore = Esattore.create! valid_attributes
      get :show, :id => esattore.id
      assigns(:esattore).should eq(esattore)
    end
  end

  describe "GET new" do
    it "assigns a new esattore as @esattore" do
      get :new
      assigns(:esattore).should be_a_new(Esattore)
    end
  end

  describe "GET edit" do
    it "assigns the requested esattore as @esattore" do
      esattore = Esattore.create! valid_attributes
      get :edit, :id => esattore.id
      assigns(:esattore).should eq(esattore)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Esattore" do
        expect {
          post :create, :esattore => valid_attributes
        }.to change(Esattore, :count).by(1)
      end

      it "assigns a newly created esattore as @esattore" do
        post :create, :esattore => valid_attributes
        assigns(:esattore).should be_a(Esattore)
        assigns(:esattore).should be_persisted
      end

      it "redirects to the created esattore" do
        post :create, :esattore => valid_attributes
        response.should redirect_to(Esattore.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved esattore as @esattore" do
        # Trigger the behavior that occurs when invalid params are submitted
        Esattore.any_instance.stub(:save).and_return(false)
        post :create, :esattore => {}
        assigns(:esattore).should be_a_new(Esattore)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Esattore.any_instance.stub(:save).and_return(false)
        post :create, :esattore => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested esattore" do
        esattore = Esattore.create! valid_attributes
        # Assuming there are no other esattori in the database, this
        # specifies that the Esattore created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Esattore.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => esattore.id, :esattore => {'these' => 'params'}
      end

      it "assigns the requested esattore as @esattore" do
        esattore = Esattore.create! valid_attributes
        put :update, :id => esattore.id, :esattore => valid_attributes
        assigns(:esattore).should eq(esattore)
      end

      it "redirects to the esattore" do
        esattore = Esattore.create! valid_attributes
        put :update, :id => esattore.id, :esattore => valid_attributes
        response.should redirect_to(esattore)
      end
    end

    describe "with invalid params" do
      it "assigns the esattore as @esattore" do
        esattore = Esattore.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Esattore.any_instance.stub(:save).and_return(false)
        put :update, :id => esattore.id, :esattore => {}
        assigns(:esattore).should eq(esattore)
      end

      it "re-renders the 'edit' template" do
        esattore = Esattore.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Esattore.any_instance.stub(:save).and_return(false)
        put :update, :id => esattore.id, :esattore => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested esattore" do
      esattore = Esattore.create! valid_attributes
      expect {
        delete :destroy, :id => esattore.id
      }.to change(Esattore, :count).by(-1)
    end

    it "redirects to the esattori list" do
      esattore = Esattore.create! valid_attributes
      delete :destroy, :id => esattore.id
      response.should redirect_to(esattori_url)
    end
  end

end