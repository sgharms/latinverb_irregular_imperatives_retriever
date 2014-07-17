class ImperativeRetrievalTest < Minitest::Test
  def test_lookup
    to_be = "sum esse fuī futūrus"
    r = Linguistics::Latin::Verb::LatinVerb::IrregularImperativesRetriever.new(to_be).retrieve
    assert_equal r.imperatives, ["es", "este"]
  end
end
