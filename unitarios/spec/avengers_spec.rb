class AvengerHeadQuarter
    attr_accessor :list

    def initialize
        self.list = []
    end    

    def put(avenger)
        self.list.push(avenger)
    end    
end

#TDD (Desenvolvimento orientado por Testes)

describe AvengerHeadQuarter do
    it 'deve adicionar um vingador' do
        hq = AvengerHeadQuarter.new

        hq.put ('Spiderman')
        # expect(hq.list).to eql ['Spiderman']
        expect(hq.list).to include 'Spiderman' 
    end

    it 'deve adicionar uma lista de vingadores' do
        hq = AvengerHeadQuarter.new
        
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        expect(hq.list).to include 'Thor'

        # res = hq.list.size > 0

        # expect(hq.list.size).to be > 0
        # expect(res).to be true 

    end    

    it 'Thor deve ser o primeiro da lista' do
        hq = AvengerHeadQuarter.new
        
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
       
        expect(hq.list).to start_with('Thor')
    end     

    it 'Ironman deve ser o último da lista' do
        hq = AvengerHeadQuarter.new
        
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        hq.put('Ironman')
       
        expect(hq.list).to end_with('Ironman')
    end     

    it 'deve conter o sobrenome' do
        avenger = 'Peter Parker'
        expect(avenger).to match(/Parker/) 
        expect(avenger).not_to match(/Aline/)
    end    
end        