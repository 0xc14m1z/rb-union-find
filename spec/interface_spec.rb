require "spec_helper"

module UnionFind

  RSpec.describe Interface do

    # define the _method_ method with empty body on _object_ at runtime
    def stub_method(object, method)
      object.class.class_eval { define_method method, Proc.new { } }
    end

    before                { class Implementation < Interface; end}

    let(:implementation)  { Implementation.new }
    let(:object)          { Object.new }

    describe "#add" do
      it "should raise an error if not implemented" do
        expect { implementation.add(object) }.to raise_error NotImplementedError
      end
      it "shouldn't raise an error if implemented" do
        stub_method(implementation, :add)
        expect { implementation.add(object) }.not_to raise_error NotImplementedError      # test for this specific error in order to allow others
      end
    end

    describe "#connect" do
      it "should raise an error if not implemented" do
        expect { implementation.connect(object, object) }.to raise_error NotImplementedError
      end
      it "shouldn't raise an error if implemented" do
        stub_method(implementation, :connect)
        expect { implementation.connect(object, object) }.not_to raise_error NotImplementedError      # test for this specific error in order to allow others
      end
    end

    describe "#connected?" do
      it "should raise an error if not implemented" do
        expect { implementation.connected?(object, object) }.to raise_error NotImplementedError
      end
      it "shouldn't raise an error if implemented" do
        stub_method(implementation, :connected?)
        expect { implementation.connected?(object, object) }.not_to raise_error NotImplementedError      # test for this specific error in order to allow others
      end
    end

  end

end
