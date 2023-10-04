require 'spec_helper'
require './FASE-2-NIVEL-2/paper_cut_MDC'

describe 'min_squares' do
    it 'Menor quantidade de quadrados' do
        expect(min_squares(29, 13).to eq(9))
    end
end
