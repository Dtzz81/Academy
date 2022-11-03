require_relative "../view_next_conway_generation"

describe '#conway_rule' do
  it 'no neighbours, stays empty' do
    expect(conway_rule(:empty, 0)).to eq :empty
  end
  it 'one neighbour, stays empty' do
    expect(conway_rule(:empty, 1)).to eq :empty
  end
  it 'one neighbour, cell alive,  turns empty' do
    expect(conway_rule(:alive, 1)).to eq :empty
  end
  it 'two neigbours neighbour,  stay empty' do
    expect(conway_rule(:empty, 2)).to eq :empty
  end
  it 'two neigbours neighbour, cell alive,  stay alive' do
    expect(conway_rule(:alive, 2)).to eq :alive
  end
  it 'three neigbours neighbour, cell alive,  stay alive' do
    expect(conway_rule(:alive, 3)).to eq :alive
  end
  it 'three neigbours neighbour, cell alive,  stay alive' do
    expect(conway_rule(:empty, 3)).to eq :alive
  end
  it 'four neigbours neighbour, cell alive,  dies from overpopulation' do
    expect(conway_rule(:alive, 4)).to eq :empty
  end
  it 'four neigbours neighbour, cell alive,  dies from overpopulation' do
    expect(conway_rule(:empty, 4)).to eq :empty
  end
end