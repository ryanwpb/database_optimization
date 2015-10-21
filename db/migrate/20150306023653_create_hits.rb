class CreateHits < ActiveRecord::Migration
  def change
    create_table :hits do |t|
      t.string :match_gene_name
      t.text :match_gene_dna
      t.float :percent_similarity
      t.integer :subject_id
      t.string :subject_type

      t.timestamps null: false
    end
  end
end


# class AddIndices < ActiveRecord::Migration
#   def change
#     add_index :genes, :sequence_id
#     add_index :hits, :subject_id
#     add_index :sequences, :assembly_id
#   end
# end
