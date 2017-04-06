# encoding: utf-8
module Mongoid
  module Associations
    module Referenced
      class HasMany

        # Binding class for has_many associations.
        class Binding
          include Bindable

          # Binds a single document with the inverse relation. Used
          # specifically when appending to the proxy.
          #
          # @example Bind one document.
          #   person.posts.bind_one(post)
          #
          # @param [ Document ] doc The single document to bind.
          #
          # @since 2.0.0.rc.1
          def bind_one(doc)
            binding do
              bind_from_relational_parent(doc)
            end
          end

          # Unbind a single document.
          #
          # @example Unbind the document.
          #   person.posts.unbind_one(document)
          #
          # @param [ Document ] document The document to unbind.
          #
          # @since 2.0.0.rc.1
          def unbind_one(doc)
            binding do
              unbind_from_relational_parent(doc)
            end
          end
        end
      end
    end
  end
end