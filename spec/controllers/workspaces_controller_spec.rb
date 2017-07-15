require 'rails_helper'

RSpec.describe WorkspacesController, type: :controller do
  
  let(:my_workspace) { Workspace.create!(title: "Title", description: "Desc") }

  describe "GET #index" do
    
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
    
    it "assigns [my_workspace] to @posts" do
      get :index
      expect(assigns(:workspaces)).to eq([my_workspace])
    end
    
  end
  
  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
    
    it "renders the #new view" do
      get :new
      expect(response).to render_template :new
    end
    
    it "instantiates @workspace" do
      get :new
      expect(assigns(:workspace)).not_to be_nil
    end
  end
  
  describe "POST create" do
    it "increases the number of Workspaces by 1" do
      expect{post :create, workspace: {title: "Title", description: "Desc"}}.to change(Workspace,:count).by(1)
    end
    
    it "assigns the new workspace to @workspace" do
      post :create, workspace: {title: "Title", description: "Desc"}
      expect(assigns(:workspace)).to eq Workspace.last
    end
    
    it "redirects to the new workspace" do
      post :create, workspace: {title: "Title", description: "Desc"}
      expect(response).to redirect_to Workspace.last
    end
  end
    
=begin
  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end
  end
=end
end
