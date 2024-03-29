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

describe ContractTypesController do

  # This should return the minimal set of attributes required to create a valid
  # ContractType. As you add validations to ContractType, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all contract_types as @contract_types" do
      contract_type = ContractType.create! valid_attributes
      get :index
      assigns(:contract_types).should eq([contract_type])
    end
  end

  describe "GET show" do
    it "assigns the requested contract_type as @contract_type" do
      contract_type = ContractType.create! valid_attributes
      get :show, :id => contract_type.id
      assigns(:contract_type).should eq(contract_type)
    end
  end

  describe "GET new" do
    it "assigns a new contract_type as @contract_type" do
      get :new
      assigns(:contract_type).should be_a_new(ContractType)
    end
  end

  describe "GET edit" do
    it "assigns the requested contract_type as @contract_type" do
      contract_type = ContractType.create! valid_attributes
      get :edit, :id => contract_type.id
      assigns(:contract_type).should eq(contract_type)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ContractType" do
        expect {
          post :create, :contract_type => valid_attributes
        }.to change(ContractType, :count).by(1)
      end

      it "assigns a newly created contract_type as @contract_type" do
        post :create, :contract_type => valid_attributes
        assigns(:contract_type).should be_a(ContractType)
        assigns(:contract_type).should be_persisted
      end

      it "redirects to the created contract_type" do
        post :create, :contract_type => valid_attributes
        response.should redirect_to(ContractType.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved contract_type as @contract_type" do
        # Trigger the behavior that occurs when invalid params are submitted
        ContractType.any_instance.stub(:save).and_return(false)
        post :create, :contract_type => {}
        assigns(:contract_type).should be_a_new(ContractType)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ContractType.any_instance.stub(:save).and_return(false)
        post :create, :contract_type => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested contract_type" do
        contract_type = ContractType.create! valid_attributes
        # Assuming there are no other contract_types in the database, this
        # specifies that the ContractType created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ContractType.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => contract_type.id, :contract_type => {'these' => 'params'}
      end

      it "assigns the requested contract_type as @contract_type" do
        contract_type = ContractType.create! valid_attributes
        put :update, :id => contract_type.id, :contract_type => valid_attributes
        assigns(:contract_type).should eq(contract_type)
      end

      it "redirects to the contract_type" do
        contract_type = ContractType.create! valid_attributes
        put :update, :id => contract_type.id, :contract_type => valid_attributes
        response.should redirect_to(contract_type)
      end
    end

    describe "with invalid params" do
      it "assigns the contract_type as @contract_type" do
        contract_type = ContractType.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ContractType.any_instance.stub(:save).and_return(false)
        put :update, :id => contract_type.id, :contract_type => {}
        assigns(:contract_type).should eq(contract_type)
      end

      it "re-renders the 'edit' template" do
        contract_type = ContractType.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ContractType.any_instance.stub(:save).and_return(false)
        put :update, :id => contract_type.id, :contract_type => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested contract_type" do
      contract_type = ContractType.create! valid_attributes
      expect {
        delete :destroy, :id => contract_type.id
      }.to change(ContractType, :count).by(-1)
    end

    it "redirects to the contract_types list" do
      contract_type = ContractType.create! valid_attributes
      delete :destroy, :id => contract_type.id
      response.should redirect_to(contract_types_url)
    end
  end

end
