require "spec_helper"

module UnionFind

  RSpec.shared_examples "a union-find implementation" do

    let(:implementation)  { described_class.new }
    let(:first_object)    { Object.new }
    let(:second_object)   { Object.new }
    let(:third_object)    { Object.new }

    context "initialization" do
      it "should have no elements" do
        expect(implementation.count).to eq(0)
      end
    end

    describe "adding and counting objects" do
      it "should have no elements" do
        expect(implementation.count).to eq(0)
      end
      it "should have one element after an #add" do
        implementation.add(first_object)
        expect(implementation.count).to eq(1)
      end
      it "should have two elements after another #add" do
        implementation.add(second_object)
        expect(implementation.count).to eq(2)
      end
      it "should have three elements after another #add" do
        implementation.add(third_object)
        expect(implementation.count).to eq(3)
      end
    end

    describe "connecting and checking connections" do
      context "with no connections set" do
        it "should return false" do
          expect(implementation.connected?(first_object, second_object)).to be_falsy
        end
      end
      context "with a single connection set" do
        before { implementation.connect(first_object, second_object) }
        it "should return true" do
          expect(implementation.connected?(first_object, second_object)).to be_truthy
        end
        it "should return false" do
          expect(implementation.connected?(first_object, third_object)).to be_falsy
          expect(implementation.connected?(second_object, third_object)).to be_falsy
        end
      end
      context "with a double connection set" do
        before { implementation.connect(second_object, third_object) }
        it "should return true" do
          expect(implementation.connected?(second_object, third_object)).to be_truthy
          expect(implementation.connected?(first_object, third_object)).to be_truthy
        end
      end
    end

  end

end
