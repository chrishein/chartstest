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

describe DataTopicsController do

  # This should return the minimal set of attributes required to create a valid
  # DataTopic. As you add validations to DataTopic, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DataTopicsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all data_topics as @data_topics" do
      data_topic = DataTopic.create! valid_attributes
      get :index, {}, valid_session
      assigns(:data_topics).should eq([data_topic])
    end
  end

  describe "GET show" do
    it "assigns the requested data_topic as @data_topic" do
      data_topic = DataTopic.create! valid_attributes
      get :show, {:id => data_topic.to_param}, valid_session
      assigns(:data_topic).should eq(data_topic)
    end
  end

  describe "GET new" do
    it "assigns a new data_topic as @data_topic" do
      get :new, {}, valid_session
      assigns(:data_topic).should be_a_new(DataTopic)
    end
  end

  describe "GET edit" do
    it "assigns the requested data_topic as @data_topic" do
      data_topic = DataTopic.create! valid_attributes
      get :edit, {:id => data_topic.to_param}, valid_session
      assigns(:data_topic).should eq(data_topic)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new DataTopic" do
        expect {
          post :create, {:data_topic => valid_attributes}, valid_session
        }.to change(DataTopic, :count).by(1)
      end

      it "assigns a newly created data_topic as @data_topic" do
        post :create, {:data_topic => valid_attributes}, valid_session
        assigns(:data_topic).should be_a(DataTopic)
        assigns(:data_topic).should be_persisted
      end

      it "redirects to the created data_topic" do
        post :create, {:data_topic => valid_attributes}, valid_session
        response.should redirect_to(DataTopic.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved data_topic as @data_topic" do
        # Trigger the behavior that occurs when invalid params are submitted
        DataTopic.any_instance.stub(:save).and_return(false)
        post :create, {:data_topic => {}}, valid_session
        assigns(:data_topic).should be_a_new(DataTopic)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        DataTopic.any_instance.stub(:save).and_return(false)
        post :create, {:data_topic => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested data_topic" do
        data_topic = DataTopic.create! valid_attributes
        # Assuming there are no other data_topics in the database, this
        # specifies that the DataTopic created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        DataTopic.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => data_topic.to_param, :data_topic => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested data_topic as @data_topic" do
        data_topic = DataTopic.create! valid_attributes
        put :update, {:id => data_topic.to_param, :data_topic => valid_attributes}, valid_session
        assigns(:data_topic).should eq(data_topic)
      end

      it "redirects to the data_topic" do
        data_topic = DataTopic.create! valid_attributes
        put :update, {:id => data_topic.to_param, :data_topic => valid_attributes}, valid_session
        response.should redirect_to(data_topic)
      end
    end

    describe "with invalid params" do
      it "assigns the data_topic as @data_topic" do
        data_topic = DataTopic.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        DataTopic.any_instance.stub(:save).and_return(false)
        put :update, {:id => data_topic.to_param, :data_topic => {}}, valid_session
        assigns(:data_topic).should eq(data_topic)
      end

      it "re-renders the 'edit' template" do
        data_topic = DataTopic.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        DataTopic.any_instance.stub(:save).and_return(false)
        put :update, {:id => data_topic.to_param, :data_topic => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested data_topic" do
      data_topic = DataTopic.create! valid_attributes
      expect {
        delete :destroy, {:id => data_topic.to_param}, valid_session
      }.to change(DataTopic, :count).by(-1)
    end

    it "redirects to the data_topics list" do
      data_topic = DataTopic.create! valid_attributes
      delete :destroy, {:id => data_topic.to_param}, valid_session
      response.should redirect_to(data_topics_url)
    end
  end

end