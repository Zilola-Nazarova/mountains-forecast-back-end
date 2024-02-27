require 'rails_helper'

RSpec.describe Mountain, type: :model do
  let(:valid_attributes) { { 'name' => 'Mountain_1', 'latitude' => 41.4951900, 'longitude' => 70.0586718, 'elevation' => 3309.6 } }
  let(:missing_name) { { 'latitude' => 41.4951900, 'longitude' => 70.0586718, 'elevation' => 3309.6 } }
  let(:missing_latitude) { { 'name' => 'Mountain_1', 'longitude' => 70.0586718, 'elevation' => 3309.6 } }
  let(:missing_longitude) { { 'name' => 'Mountain_1', 'latitude' => 41.4951900, 'elevation' => 3309.6 } }
  let(:missing_elevation) { { 'name' => 'Mountain_1', 'latitude' => 41.4951900, 'longitude' => 70.0586718 } }
  let(:string_latitude) { { 'name' => '', 'latitude' => '41.4951900', 'longitude' => 70.0586718, 'elevation' => 3309.6 } }
  let(:string_longitude) { { 'name' => '', 'latitude' => 41.4951900, 'longitude' => '70.0586718', 'elevation' => 3309.6 } }
  let(:string_elevation) { { 'name' => '', 'latitude' => 41.4951900, 'longitude' => 70.0586718, 'elevation' => '3309.6' } }
  let(:negative_elevation) { { 'name' => '', 'latitude' => 41.4951900, 'longitude' => 70.0586718, 'elevation' => -3309.6 } }
  let(:empty_name) { { 'name' => '', 'latitude' => 41.4951900, 'longitude' => 70.0586718, 'elevation' => 3309.6 } }
  let(:long_name) { { 'name' => 'A' * 37, 'latitude' => 41.4951900, 'longitude' => 70.0586718, 'elevation' => 3309.6 } }

  context 'name attribute' do
    it 'should exist' do
      expect(Mountain.create(valid_attributes)).to be_valid
    end

    it 'should not be missing' do
      expect(Mountain.create(missing_name)).to_not be_valid
    end

    it 'should not be empty' do
      expect(Mountain.create(empty_name)).to_not be_valid
    end

    it 'should not be more than 36 chars' do
      expect(Mountain.create(long_name)).to_not be_valid
    end
  end

  context 'latitude attribute' do
    it 'should not be missing' do
      expect(Mountain.create(missing_latitude)).to_not be_valid
    end

    it 'should be a number' do
      expect(Mountain.create(string_latitude)).to_not be_valid
    end
  end

  
  context 'longitude attribute' do
    it 'should not be missing' do
      expect(Mountain.create(missing_longitude)).to_not be_valid
    end

    it 'should be a number' do
      expect(Mountain.create(string_longitude)).to_not be_valid
    end
  end

  
  context 'elevation attribute' do
    it 'should not be missing' do
      expect(Mountain.create(missing_elevation)).to_not be_valid
    end

    it 'should be a number' do
      expect(Mountain.create(string_elevation)).to_not be_valid
    end

    it 'should not be negative' do
      expect(Mountain.create(negative_elevation)).to_not be_valid
    end
  end
end
