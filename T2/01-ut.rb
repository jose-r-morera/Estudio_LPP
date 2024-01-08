require "test/unit"

class EducacionFormalTest < Test::Unit::TestCase

    def setup
        p "Hola"
    end

    def teardown
        p "Adios"
    end
    
    test "Primer test" do
        p "Test1" 
        assert(true)
    end

    test "Segundo test" do
        p "Test2" 
        assert(true)
    end


end
