FROM ruby

ENV TREE_SITTER_PARSER_DIR='/tree-sitter-parser'

WORKDIR /test

RUN mkdir /tree-sitter-parser

COPY Gemfile .

RUN bundle install

COPY . .

CMD ["bundle", "exec", "ruby", "test.rb"]
