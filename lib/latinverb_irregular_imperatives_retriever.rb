require "latinverb_irregular_imperatives_retriever/version"
require "latinverb_irregular_verb_definition_consumer"

module Linguistics
  module Latin
    module Verb
      class LatinVerb
        class IrregularImperativesRetriever < IrregularVerbDefinitionConsumer
          def retrieve
            raw = structure["tense_blocks"]
            source = raw["active_voice_imperative_mood_present_tense"] || raw["active voice_imperative_mood_present_tense"]
            raw = source["data"]
            OpenStruct.new( :imperatives => [String(raw[1]).gsub(/\s+/,''), String(raw[4]).gsub(/\s+/,'')] )
          end
        end
      end
    end
  end
end
