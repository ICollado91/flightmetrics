require 'rails_helper'

RSpec.describe Column, type: :model do
    let(:workspace) { Workspace.create!(title: "New Workspace Title", description: "New Workspace Description") }
    let(:column) { Column.create!(header: 'Column Header', workspace: workspace) }
    
    describe "attributes" do
        it "has a header attribute" do
            expect(column).to have_attributes(header: "Column Header")
        end
    end
    
end
