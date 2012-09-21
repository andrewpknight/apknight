require 'spec_helper'

describe "StaticPages" do
	
	subject { page }
	
	shared_examples for "all static pages" do
		it { should have_selector('title', full_title(page_title)) }
	end
	
	describe "Home page" do
		before { visit root_path }		
		it { should_not have_selector('title', text: '| Home') }
	end
	
	describe "Pubs page" do
		before { visit pubs_path }
		
		it { should have_selector('h1', text: 'Publications') }
		it { should have_selector('title', text: full_title('Publications')) }
	end	
end
