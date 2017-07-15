require 'rails_helper'

RSpec.describe Workspace, type: :model do
    let(:workspace) { Workspace.create!(title: "New Workspace Title", description: "New Workspace Description") }
    
    describe "attributes" do
        it "has title and description attributes" do
            expect(workspace).to have_attributes(title: "New Workspace Title", description: "New Workspace Description")
        end
    end
end
