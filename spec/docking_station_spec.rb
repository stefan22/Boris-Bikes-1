require 'docking_station'

describe DockingStation do
  it 'releases working bikes' do
    subject.dock Bike.new
    bike = subject.release_bike
    expect(bike).not_to be_broken
  end

  it 'raises an error when full' do
    20.times { subject.dock double :bike }
    expect { subject.dock double :bike }.to raise_error 'Station Full'
  end

  it 'can dock a bike' do
    expect(subject.dock :bike).to be nil
  end

  it 'can set a capacity' do
    docking_station = DockingStation.new
    docking_station.capacity = 30
  end
end