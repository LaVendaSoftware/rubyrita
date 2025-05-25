setup:
	bin/setup
	make dbreseed dbprepare

start:
	bin/dev

dbreseed:
	bin/rails db:drop db:create db:migrate db:seed RAILS_ENV=development

dbprepare:
	bin/rails db:setup db:test:prepare db:schema:load db:migrate RAILS_ENV=test

ci:
	make brakeman rubocop erb-lint biome rspec

code-fix:
	make rubocop-fix erb-lint-fix biome-fix

rspec:
	bin/rspec

brakeman:
	bin/brakeman

rubocop:
	bin/rubocop

rubocop-fix:
	bin/rubocop -A

erb-lint:
	bin/erb_lint app/views

erb-lint-fix:
	bin/erb_lint app/views --autocorrect

biome:
	bin/biome

biome-fix:
	bin/biome --write
