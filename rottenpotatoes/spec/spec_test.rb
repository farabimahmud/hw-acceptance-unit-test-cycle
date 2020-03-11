describe 'Movies Model' do
    describe 'all_ratings' do
      it 'should be defined' do
        expect{ Movie.all_ratings == %w(G PG PG-13 NC-17 R)} 
      end
    end
    describe 'movies_by_same_director' do
        it 'should be defined' do
            expect{ Movie.movies_by_same_director(-1).nil? == true }
        end        
    end
  end